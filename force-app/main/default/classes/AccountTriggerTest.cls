@isTest
public with sharing class AccountTriggerTest {
    @isTest
    private static void name() {
        Account acc1 = new Account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';
        
        Account acc2 = new Account();
        acc2.name = 'SI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new Account();
        acc3.name = 'SI Test';
        acc3.Industry = 'Energy';

        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        insert listAcc;

        for (account acc : listAcc) {
            acc.description = 'Update';
        }
        update listAcc;
    }
}
