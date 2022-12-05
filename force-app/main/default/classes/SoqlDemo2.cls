public class SoqlDemo2 {
    public static void soqlchildToParent_1() {
        List<Contact> listContacts = [select id, name, account.name, account.Industry from Contact where account.Industry = 'Energy'];
        
        System.debug('listContacts ' + listContacts);

        for (Contact eachContact : listContacts) {
            String accName = eachContact.Account.Name;
            System.debug('Contact Name = ' + eachContact.Name + ' acc name is ' + accName);
        }
    }

    public static void soqlParentToChild_1() {
        List<account> listAccOpp = [select id, name, annualrevenue, type, (select name, amount from opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];

        for (account eachAcc : listAccOpp) {
            System.debug('acc name => ' + eachAcc.Name + 'annual revenue ' + eachAcc.AnnualRevenue);
            List<opportunity> listOpp = eachAcc.opportunities;
            for (opportunity eachOpp : listOpp) {
                System.debug('-- opp name => ' + eachOpp.name + ' amount is ' + eachOpp.amount );
            }
        }
    }

    
}
