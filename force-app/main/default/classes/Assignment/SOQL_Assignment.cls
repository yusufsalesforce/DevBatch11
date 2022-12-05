public class SOQL_Assignment {
    public static void soql_WhereClause() {
        
        List<Contact> lstContact = [SELECT id,Name FROM Contact WHERE Name LIKE 'A%' ];
        Integer lstContactSize = lstContact.size();
        System.debug(' lstcontact ' + lstContact);
        System.debug(' Size of lstContact => ' + lstContactSize);
        System.debug([SELECT COUNT(ID) FROM Contact]);

    }

    public static void soql_FromMethod() {
        List<Contact> lstContact = [SELECT LastName, Phone FROM Contact WHERE LastName != null and Phone != null ];
        
        System.debug(' lstcontact ' + lstContact);

        for (Contact item : lstContact) {

            String lNameC = item.LastName;
            String phoneC = item.Phone;
            System.debug(' Last Name => ' + lNameC + ' Phone => ' + phoneC);
        }
    }
}



