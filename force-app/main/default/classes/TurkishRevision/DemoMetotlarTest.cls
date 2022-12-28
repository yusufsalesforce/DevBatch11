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
}
