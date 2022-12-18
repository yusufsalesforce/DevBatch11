trigger SalesforceProjectTrigger on salesforce_project__c (before insert, after insert, before update, after update) {

    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.new);

    }

    if (trigger.isbefore && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }

}