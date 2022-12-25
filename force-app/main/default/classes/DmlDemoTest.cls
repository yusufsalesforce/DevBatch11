@isTest
public class DmlDemoTest {
    @istest
    private static void dmlInsert1Test() {
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id, name from account where name = 'SoftInnovas'];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('SoftInnovas', listAcc[0].name);
    }

    @istest
    private static void dmlInsert4Test() {
        Account acc = new account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlInsertDemo_4();

        List<contact> listContact = [select id, lastName from contact where lastname = 'Biden'];
        system.assertEquals(1, listContact.size());
    }

    @isTest
    private static void dmlInsert5Test() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_name__c = 'Test SP';
        sp.Status__C = 'New';
        insert sp;



        DmlDemo.dmlInsertDemo_55();

        List<Salesforce_Ticket__c> listST = [select id,name, subject__c, salesforce_project__c from Salesforce_Ticket__c where salesforce_project__c = :sp.id and subject__c = 'Learn Apex dmls'];
        System.assertEquals('Learn Apex dmls', listST[0].subject__c);
    }
}
