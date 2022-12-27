trigger SalesforceProjectTrigger on salesforce_project__c (before insert, after insert, before update, after update) {
    /*
    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.new);

        // * call future method
        System.debug('calling future method NOW');
        SalesforceProjectTriggerHandler.spUpdateDescription(Trigger.newMap.keyset());
        System.debug('calling future method DONE');
    }

    if (trigger.isbefore && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
    */
    if (Trigger.isAfter && Trigger.isUpdate) {
        //*aaa
        SalesforceProjectTriggerHandler.spStatusCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}