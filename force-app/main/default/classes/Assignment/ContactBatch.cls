public class ContactBatch implements Database.Batchable<Sobject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator cn = Database.getQueryLocator ([select id,description from contact]);
        return cn;
    }

    public void execute(Database.BatchableContext bc, List<Contact> cntList){
        List<Contact> cntUpdate = new List<Contact>();
        for (contact con : cntList) {
            con.description = 'Updated by batch';
            cntUpdate.add(con);
        }
        update cntUpdate;
    }

    public void finish(Database.BatchableContext bc){
        System.debug('batch over');
    }
}
