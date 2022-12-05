public class SoqlAssignment {
    public static void contactList() {
        List<Contact> lstcontact = [select Account.Id, Account.Name from contact where Account.Name != null ];
        System.debug(lstcontact);
        for(contact item : lstcontact){
            System.debug(' Account ID => ' + item.Account.Id + '---- Account NAME => ' + item.Account.Name);
        }
    }

    public static void accountList(){
        list<Account> lstaccount = [select name, (select name, id from contacts) from account];
        System.debug(lstaccount);
        for(Account item : lstaccount){
            //System.debug(item.contacts);
            List<contact> contactsList = item.contacts;
            for(contact itemCon : contactsList){
                System.debug(' Contact ID => '+ itemCon.id + ' ----AND---- ' + 'Contact Name => ' + itemCon.name);
                
            }
        }
    }
}
