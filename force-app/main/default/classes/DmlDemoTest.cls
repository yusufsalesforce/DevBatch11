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
}