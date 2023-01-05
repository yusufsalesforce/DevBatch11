public class BatchApex11 implements Database.Batchable<SObject>{
    //*Tum accountlarin isimlerinin sonuna batch11 ekleyelim..
    //* start
    public Database.QueryLocator start(Database.BatchableContext bc){
        string query = 'select id, name from Account';
        return Database.getQueryLocator(query);
    }
    //* execute
    public void execute(Database.BatchableContext bc, List<Account> scope){
        for (Account acc : scope) {
            acc.Name = acc.Name + ' batch 11';
        }
        //update scope;
        try {
            update scope;
        } catch (Exception e) {
            System.debug(e);
        }
    }
    //* finish
    public void finish(Database.BatchableContext bc){
        System.debug('islem bitti');
        AsyncApexJob a = [select id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email from AsyncApexJob where id =:bc.getJobId()];

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAdresses = new String[]{'salesforceyusuf@gmail.com', 'hunter30236@gmail.com'};
        mail.setToAddresses(toAdresses);
        mail.setSubject(a.status);
        mail.setPlainTextBody(system.label.accountNameUpdate + '\n' + ' The batch Apex job proccessed ' + a.TotalJobItems + '\n' + ' batches with ' + a.NumberOfErrors + ' failures.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}


//*.apex
/* 
BatchApex11 ba = new BatchApex11();
Database.executeBatch(ba, 5);
*/