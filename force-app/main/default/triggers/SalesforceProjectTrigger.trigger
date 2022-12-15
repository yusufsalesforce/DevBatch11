trigger SalesforceProjectTrigger on salesforce_project__c (after insert) {
    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.new);

    }

}