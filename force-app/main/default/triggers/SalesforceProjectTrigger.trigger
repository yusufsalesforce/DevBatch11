trigger SalesforceProjectTrigger on SOBJECT (before insert) {
    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectTriggerHandler.creatDefaultTicket(trigger.new);
        
    }

}