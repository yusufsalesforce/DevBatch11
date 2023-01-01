@isTest
public class AccountQueueableExampleTest {
    @isTest
    private static void testQueueable1() {
        list<Account> listAcc = new List<Account>();
        //* 1
        for (Integer i = 0; i < 200; i++) {
            account a = new account();
            a.name = 'Pis account ' + i;
            a.Active__C = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;
        //* 2
        Test.startTest();
        AccountQueueableExample aq = new AccountQueueableExample(listAcc);
        System.enqueueJob(aq);
        Test.stopTest();

        //* 3
        List<Account> getAccounts = [select id, name from account];
        System.assert(getAccounts[0].name.contains(' -- SI'));
    }
}
