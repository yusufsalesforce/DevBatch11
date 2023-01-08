public class Batch11 implements Database.Batchable<Sobject>{
    //* Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..

    //* Queuable1=> Accountlardan Annual Revenuesi 10000 olanlara birer contact create edip bağlayalım.

    //* Queuable2=> Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source ni 'Partner Referal' yapın..

    //*Queuable3=> Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source leri 'Partner Referal' olanların Description kısmına 'Queuable chain' yazın.. 

    //* schedulable=> bu işlemler ard arda her ayın ilk günü yapılsın..
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, AnnualRevenue from account]);
        return q1;
    }

    //execute-parca parca islem yapilir..
    public void execute(Database.BatchableContext bc, List<account> scope){
        List<Account> updateAccounts = new List<Account>();
        for (account acc : scope) {
            //name fieldi max 40 karakter aliyor..
            acc.Name += ' update';
            if (acc.AnnualRevenue == null) {
                acc.AnnualRevenue = 10000;
            }
            updateAccounts.add(acc);
        }
        update updateAccounts;
    }

    //finish-bitis mesaji veya mail gibi islemin bittigi ile ilgili haber verme gerceklesir..baska bir class cagrilmasi da burada olur.
    public void finish(Database.BatchableContext bc){
        System.debug('batch islemi bitti..');
        // Queuable111 q111 = new Queuable111();
        // system.enqueueJob(q111);
        if( ! Test.isRunningTest() ){
        ID jobId = system.enqueueJob(new Queuable111());
        //System.debug(jobId);
        }
    }
}