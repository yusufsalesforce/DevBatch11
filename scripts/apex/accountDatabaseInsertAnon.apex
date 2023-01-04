
account acc1 = new account();
acc1.Name = 'Abc test';
acc1.Industry = 'Energy';

account acc2 = new account();
acc2.Name = 'xyx test';

account acc3 = new account();
account acc4 = new account();

List<Account> listAcc = new List<Account>{acc1,acc2,acc3,acc4};

List<Database.SaveResult> results = Database.insert(listAcc, false);

for(Database.SaveResult eachResult : results){
    if(eachResult.isSuccess()) {
        System.debug('inserted successfully, record id is ' + eachResult.getId());
    } else {
        System.debug('errored out. error are ' + eachResult.getErrors());
    }
}