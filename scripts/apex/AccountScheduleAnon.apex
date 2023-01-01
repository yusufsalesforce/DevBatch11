
AccountSchedule asch = new AccountSchedule();
String crn = '0 0 13 * * ?';
System.schedule('account sc again', crn, asch);