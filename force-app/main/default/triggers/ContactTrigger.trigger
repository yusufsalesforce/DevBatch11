trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    /*
    if (trigger.isBefore && trigger.isInsert ) {
        System.debug('Before Insert Trigger tetiklendi');
        System.debug('Trigger New => ' + trigger.new);
        System.debug('Trigger Old => ' + trigger.old);
        System.debug('Trigger NewMap => ' + trigger.newMap);
        System.debug('Trigger OldMap => ' + trigger.oldMap);
        System.debug('=========== END ===========');
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After Insert Trigger tetiklendi');
        System.debug('Trigger New => ' + trigger.new);
        System.debug('Trigger Old => ' + trigger.old);
        System.debug('Trigger NewMap => ' + trigger.newMap);
        System.debug('Trigger OldMap => ' + trigger.oldMap);
        System.debug('=========== END ===========');
    }
    if (trigger.isBefore && trigger.isUpdate ) {
        System.debug('Before Update Trigger tetiklendi');
        System.debug('Trigger New => ' + trigger.new);
        System.debug('Trigger Old => ' + trigger.old);
        System.debug('Trigger NewMap => ' + trigger.newMap);
        System.debug('Trigger OldMap => ' + trigger.oldMap);
        System.debug('=========== END ===========');
    }
    if (trigger.isAfter && trigger.isUpdate ) {
        System.debug('After Update Trigger tetiklendi');
        System.debug('Trigger New => ' + trigger.new);
        System.debug('Trigger Old => ' + trigger.old);
        System.debug('Trigger NewMap => ' + trigger.newMap);
        System.debug('Trigger OldMap => ' + trigger.oldMap);
        System.debug('=========== END ===========');
    }
    */
    
    
    if (Trigger.isBefore) {
        System.debug('We are in BEFORE');
        if (trigger.isInsert) {
            System.debug('we are in before insert');
        }
        if (trigger.isUpdate) {
            System.debug('we are in before update');
            ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

            ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
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