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
}
