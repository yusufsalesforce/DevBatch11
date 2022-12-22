////// 1-
List<Account> accList = new List<Account>();
Account acc = new Account();
acc.name = 'Assignment 1';
acc.phone = '12345';
acc.Site = 'site string';
acc.website = 'www.softinnovas.com';
accList.add(acc);

Account acc1 = new Account();
acc1.name = 'Assignment 2';
acc1.phone = '12345';
acc1.Site = 'site string';
acc1.website = 'www.softinnovas.com';
accList.add(acc1);
insert accList;
System.debug(accList);

////// 2-

List<Account> accUpList = [select id, name, website from account where website = 'www.softinnovas.com'];
List<Account> accUpdate = new List<Account>();
for(account item : accUpList){
    item.name = 'Assignment up';
    item.phone = '54321';
    accUpdate.add(item);
}
update accUpdate;
System.debug(accUpdate);

////// 3-

List<Account> accDel = [select id, name from account order by createddate desc limit 2];
system.debug(accDel);
delete accDel;

////// 4-

List<opportunity> oppList = new List<opportunity>();

for(integer i=1; i<150; i++){
    opportunity opp = new opportunity();
    opp.name = 'Homework';
    opp.type = 'New Customer';
    opp.stagename = 'Qualification';
    opp.closeDate = date.newInstance(2024, 02, 02);
    opp.description = 'Description ' + i;
    oppList.add(opp);
}
if(!oppList.isEmpty()){
insert oppList;
}

////// 5-

List<opportunity> oppListDel = [select id, name from opportunity where name = 'Homework'];
delete oppListDel;

////// 6-

account accUni = [select id from account where name = 'University of Arizona'];
account acc = new account();
acc.name = 'Summer Fest LLC';
acc.parentid = accUni.id;
acc.type = 'Technology Partner';
acc.rating = 'Hot';
acc.annualrevenue = 200000000;
insert acc;

////// 7- 

account accUni = [select id from account where name = 'Summer Fest LLC'];
List<contact> cntList = new List<contact>();

for (Integer i = 1; i <= 3; i++) {
    contact cnt = new contact();
    cnt.lastname = 'Event Planner ' + i;
    cnt.phone = '+1 2345 7896';
    cnt.leadSource = 'Web';
    cnt.Accountid = accUni.id;
    cntList.add(cnt);
}
insert cntList;








List<Account> accList = new List<Account>();
Account acc = new Account();
acc.name = 'Tr deneme 7';
accList.add(acc);

Account acc1 = new Account();
acc1.name = 'Tr deneme 8';
accList.add(acc1);

Account acc2 = new Account();
acc2.name = 'Tr deneme 9';
accList.add(acc2);


insert accList;
System.debug(accList);
