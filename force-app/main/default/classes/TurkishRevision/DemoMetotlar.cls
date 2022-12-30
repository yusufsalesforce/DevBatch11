public class DemoMetotlar {
    public static void printWelcome() {
        System.debug('Hoşgeldiniz..');
    }

    public static void welcomePerson(string nm) {
        System.debug('Hoşgeldin ' + nm);
    }

    public static integer toplama(integer a, Integer b) {
        return a+b;
    }
    public static void createAccount() {
        Account acc = new Account();
        acc.name = 'Salesforce';
        insert acc;
    }
    public static void createUpdateContact() {
        Account acc = new Account();
        acc.name = 'SoftInnovas';
        insert acc;

        acc.Name = 'SoftInnovas Inc.';
        update acc;
    }
    public static void createContact() {
        account acc = [select id, name from account where name = 'Salesforce' limit 1];
        contact cnt = new contact();
        cnt.lastname = 'Doe';
        cnt.AccountId = acc.id;
        insert cnt;
    }
}
