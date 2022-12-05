
// 1-
select id, name, annualrevenue from account where name like 'United%'
// 2-
select id, name, annualrevenue from account where name = 'United%'
// 3-
select id, name, annualrevenue from account where name like 'United%\%'
// 4-
select id, name, annualrevenue from account order by annualrevenue limit 3
// 5-
select name, rating, phone from account order by createddate desc limit 1
// 6-
select name, email, title, account.name from contact where title like '%VP%'
// 7-
select name, amount, closedate, stagename from opportunity where stagename = 'Closed Won'
// 8-
select name, amount from opportunity where amount > 100000
// 9-
select name, account.name, account.rating, account.type from opportunity where account.type = 'Customer - Direct'
// 10-
select Id, Status__c, Subject__c, RecordTypeId, Salesforce_Project__r.status__c from Salesforce_Ticket__c where Salesforce_Project__r.Status__c = 'Completed'





// 10.Salesforce Project status ü completed olan tüm salesforce ticket ların subject,status ve record type bilgilerini getirin.
select Id, Status__c, Subject__c, RecordTypeId, Salesforce_Project__r.status__c from Salesforce_Ticket__c where Salesforce_Project__r.Status__c = 'Completed'
