trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,before update,after insert,after update) {

    if(trigger.isBefore && trigger.isInsert){

        for(Salesforce_Project__c item : trigger.new){
            item.Project_Name__c = 'New Trigger Project';
            System.debug(item.Project_Name__c);
        }
    }

    if(trigger.isBefore && trigger.isUpdate){
        Map<Id,Salesforce_Project__c> oldMap = trigger.oldMap;
        Map<Id,Salesforce_Project__c> newMap = trigger.newMap;
        
        set<id> ids = newMap.keyset();

        for(id item : ids){
            Salesforce_Project__c sfpO = oldMap.get(item);
            System.debug('Old Project_Name ' + sfpO.Project_Name__c);

            Salesforce_Project__c sfpN = newMap.get(item);
            System.debug('New Project_Name ' + sfpN.Project_Name__c);
        }

    }

}