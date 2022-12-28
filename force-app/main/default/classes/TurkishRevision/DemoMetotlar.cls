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
}
