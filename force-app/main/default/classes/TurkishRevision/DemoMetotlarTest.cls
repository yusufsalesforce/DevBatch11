@isTest
public class DemoMetotlarTest {
    @isTest
    private static void printWelcomeTest() {
        DemoMetotlar.printWelcome();
    }
    @isTest
    private static void welcomePersonTest() {
        DemoMetotlar.welcomePerson('yusuf');
    }
    @isTest
    private static void toplamaTest() {
        System.assertEquals(33, DemoMetotlar.toplama(11, 22));
    }
    @isTest
    private static void createAccountTest() {
        DemoMetotlar.createAccount();
        List<Account> accList = [select id,name from account where name = 'Salesforce'];
        System.assertEquals(1, accList.size());
        System.assert(1==accList.size());
    }
    @isTest
    private static void createUpdateContactTest() {
        DemoMetotlar.createUpdateContact();
        List<Account> accList = [select id,name from account]; 
        System.assertEquals('SoftInnovas Inc.', accList[0].name);
    }
    @isTest
    private static void createContact() {
        Account acc = new Account();
        acc.name = 'Salesforce';
        insert acc;
        DemoMetotlar.createContact();
        List<Contact> cntList = [select id,lastname from contact where lastname = 'Doe' limit 1];
        System.assertEquals(1, cntList.size());
    }
}
