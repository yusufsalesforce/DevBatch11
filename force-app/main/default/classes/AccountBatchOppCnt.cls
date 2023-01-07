public class AccountBatchOppCnt implements Database.Batchable<sobject>, Database.stateful {
    //^^SORU 27 :
    //^^ Bir Account'a bağlı; Opportunity yoksa bir opportunity, Contact yoksa bir Contact, Opportunity ve Contact yoksa birer Opportunity ve Contact oluşturan bir batchable apex tasarlayınız, finish() kısmında kaç adet Opportunity ve Contact oluşturulduğunu system.debug() vasıtası ile yazdırınız ve her cumartesi 02:00 AM saatinde execute edilecek şekilde planlayınız.
    public integer countCnt = 0;
    public integer countOpp = 0;
    //* start
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q = Database.getQueryLocator([select id, name, (select id from contacts), (select id from Opportunities) from account  where name like '%test%']);
        return q;
    }
    //* execute
    public void execute(Database.BatchableContext bc, List<Account> acList){
        List<Contact> cntList = new List<Contact>();
        List<opportunity> oppList = new List<opportunity>();
        
        for (account acc : acList) {
            if (acc.contacts.size() == 0 && acc.Opportunities.size() != 0) {

                cntList.add(new contact(lastname = 'deneme cnt', AccountId = acc.id));

            }else if (acc.contacts.size() != 0 && acc.Opportunities.size() == 0) {
                
                oppList.add(new opportunity(name = 'deneme opp', closedate = Date.newinstance(2023,01,06), stagename = 'Closed Won', AccountId = acc.id));

            }else if (acc.contacts.size() == 0 && acc.Opportunities.size() == 0) {

                cntList.add(new Contact(lastname = 'deneme cnt opp', AccountId = acc.id ));
                oppList.add(new opportunity(name = 'deneme opp cnt', closedate = Date.newinstance(2023,01,06), stagename = 'Closed Won', AccountId = acc.id));

            } else {
                system.debug('Bu account\' a bağli en az bir contact ve bir opportunity var.');
            }
        }
        if (!cntList.isEmpty()) {
            insert cntList;
        }
        if (!oppList.isEmpty()) {
            insert oppList;
        }
        countCnt += cntList.size();
        countOpp += oppList.size();
    }
    //* finish
    public void finish(Database.BatchableContext bc){
        System.debug('Toplam ' + countCnt + ' adet Contact record\' u oluşturulmuştur.');
        System.debug('Toplam ' + countOpp + ' adet Opportunity record\' u oluşturulmuştur.');
    }
}