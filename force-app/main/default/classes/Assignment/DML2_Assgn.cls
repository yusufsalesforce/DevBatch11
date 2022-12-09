public class DML2_Assgn {
    public static void insert_dml() {
        
        Account acc = new Account();
        acc.Name = 'Yusuf Assignment';
        acc.AnnualRevenue = 100;
        acc.Description = 'good';
        insert acc;

        Account acc1 = new Account();
        acc1.Name = 'Yusuf_2 Assignment';
        acc1.AnnualRevenue = 200;
        acc1.Description = 'good good';
        insert acc1;
    }

    public static void updating_dml() {
        
        Account acc = new Account();
        acc.Name = 'Account Created';
        acc.Phone = '02123334455';
        insert acc;
        System.debug(acc);
        acc.Name = 'Account Updated';
        update acc;
        System.debug(acc);

    }

    public static void createBulkContacts() {
        List<contact> listCnt = new List<contact>();

        contact cnt1 = new contact();
        cnt1.firstName = 'Mark';
        cnt1.lastName = 'Ruffalo';
        listCnt.add(cnt1);

        contact cnt2 = new contact();
        cnt2.firstName = 'Mark';
        cnt2.lastName = 'Ruffalo';
        listCnt.add(cnt2);

        contact cnt3 = new contact();
        cnt3.firstName = 'Chris';
        cnt3.lastName = 'Hemsworth';
        listCnt.add(cnt3);

        contact cnt4 = new contact();
        cnt4.firstName = 'Scarlett';
        cnt4.lastName = 'Johansson';
        listCnt.add(cnt4);
        
        contact cnt5 = new contact();
        cnt5.firstName = 'Scarlett';
        cnt5.lastName = 'Johansson';
        listCnt.add(cnt5);
        
        insert listCnt;
    }

    public static List<Contact> searchForContacts(String lastN) {
        
        List<Contact> listcnt = [select id, name from contact where lastName =: lastN ];

        return listcnt;
    }


}
