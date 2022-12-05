public class DmlDemo {
    public static void dmlInsertDemo_stnObj() {
        
        Account acc = new account();
        acc.Name = 'SoftInnovas';
        System.debug('before ' + acc);


        insert acc;
        System.debug('after ' + acc);
    }

    public static void dmlInsertDemo_cstObj() {
        
        Salesforce_project__c spNew = new Salesforce_project__c();
        spNew.project_name__c = 'Teach DML to batch 11';
        spNew.description__c = 'Everybody is doing great. Keep it up';

        insert spNew;
    }

    public static void dmlUpdateDemo_1() {
        Account acc = new account();
        acc.Name = 'Softinnovas';
        insert acc;

        acc.Name = 'Salesforce Inc';
        update acc;
        System.debug(acc);
    }
}
