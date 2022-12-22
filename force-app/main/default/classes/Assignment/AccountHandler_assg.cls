public class AccountHandler_assg {
    public static void createContact(List<Account> newList, List<Account> oldList, Map<Id,Account> newMap, Map<Id,Account> oldMap) {
        
        List<Contact> conList = new List<Contact>();

        for (account acc : newList) {
            conList.add(new Contact (LastName=acc.name + 'contact', Accountid=acc.id));
        }
        insert conList;
    }
}