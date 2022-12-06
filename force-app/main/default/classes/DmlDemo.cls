public class DmlDemo {
    public static void dmlInsertDemo_stnObj() {
        
        Account acc = new account();
        acc.Name = 'SoftInnovas';
        System.debug('before ' + acc);


        insert acc;
        System.debug('after ' + acc);
    }

    public static void dmlInsertDemo_cstObj() {
        
        Salesforce_project__c spNew = new Salesforce_project__c();
        spNew.project_name__c = 'Teach DML to batch 11';
        spNew.description__c = 'Everybody is doing great. Keep it up';

        insert spNew;
    }

    public static void dmlUpdateDemo_1() {
        Account acc = new account();
        acc.Name = 'Softinnovas';
        insert acc;

        acc.Name = 'Salesforce Inc';
        update acc;
        System.debug(acc);
    }

    public static void dmlUpdateDemo_3() {
        account acc = [select name from account where name = 'SoftInnovas'];

        acc.Name = 'SoftInnovas Inc.';
        
        update acc;
        System.debug('after update ' + acc);
    }

    public static void dmlUpdateDemo_4() {
        account acc = [select id, name from account where name = 'Edge Communications' Limit 1];

        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.Id;
        insert cnt;
        System.debug('contact record : ' + cnt);

    }

    public static void dmlInsertDemo_5() {
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by CreatedDate desc limit 1];

        //we want to create related ticket
        Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
        stNew.Subject__c = 'Learn Apex dmls';
        stNew.Priority__c = 'High';
        stNew.Status__c = 'New';
        stNew.Requested_by_date__c = date.newInstance(2022, 12, 5);
        stNew.Salesforce_Project__c = sp.Id;
        insert stNew;
        system.debug('st is ' + stNew);
    }

    public static void dmlInsertMultiple_wrong() {
        for (Integer i = 0; i < 225; i++) {
            Account acc = new account();
            //2. set values to fields
            acc.Name = 'SoftInnovas ' + i;
            system.debug('NOT inserted ' + acc);
            //dml.
            insert acc; //booom
            system.debug('INSERTED ' + acc);
        }
    }

    public static void dmlInsertMultiple_right() {
        List<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }

    public static void dmlInsertMultiple_right2() {
        List<account> listAcc = new  List<account>();
        for (Integer i = 0; i < 155; i++) {
            account acc = new account();
            acc.Name = 'SoftInnovas v' + i;
            acc.Active__c = 'Yes';
            listAcc.add(acc);
        }

        if(!listAcc.isEmpty()){
            insert listAcc;
        }
    }

    public static void dmlUpdateMultiple_right1() {
        list<account> listAcc = [select id, name, active__c from account ];

        list<account> updateAccount = new list<account>();

        for (account acc : listAcc) {
            if (acc.Active__c == 'Yes') {
                acc.Name = acc.Name + ' via B.0';
                updateAccount.add(acc);
            }
        }
        if (!updateAccount.isEmpty()) {
            update updateAccount;
        }
    }
}
