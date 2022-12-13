trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    if (Trigger.isBefore) {
        System.debug('We are in BEFORE');
        if (trigger.isInsert) {
            System.debug('we are in before insert');
        }
        if (trigger.isUpdate) {
            System.debug('we are in before update');
            ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }

    }
    if (Trigger.isAfter) {
        System.debug('We are in AFTER');
        if (trigger.isInsert) {
            System.debug('we are in after insert');
        }
        if (trigger.isUpdate) {
            System.debug('we are in after update');
        }

    }
}