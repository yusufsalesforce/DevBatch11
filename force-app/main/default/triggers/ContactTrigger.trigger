trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    /*
    if (Trigger.isAfter) {
        if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
            ContactTriggerHandler.numberOfcontacts(Trigger.new);
        }
    }
    */


    
    //^^ Yeni bir Contact mevcut bir Accounta bağlı olarak oluşturulduğunda Contact other phone bağlı olduğu Account phone olsun.
    /*
    //* version-1
    if(Trigger.isAfter && Trigger.isInsert){
        ContactTriggerHandler.otherPhone(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
    //* version-2
    if(Trigger.isBefore && Trigger.isInsert){
        ContactTriggerHandler.otherPhone2(Trigger.new, Trigger.newMap);
    }
    */



    
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
    
    /*
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

    */

    // tr ödev - soru 21
    /*
    if (Trigger.isBefore && Trigger.isUpdate) {
        ContactTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    */




    // Soru : Yeni bir Contact create edilip bir Accounta bağlandığında,
    // Accounta bağlı bir Contact delete edildiğinde
    // veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse
    // Accountta Number_of_Contacts__c fieldi güncellenecek..
    /*
    set<id> accountids = new Set<id>();

    if (trigger.isAfter) {
        if (trigger.isInsert || trigger.isUndelete) {
            for (contact c : trigger.new) {
                if (c.accountid != null) {
                    accountids.add(c.accountid);
                }
            }
        }

        if (trigger.isUpdate) {
            for (contact c : trigger.new) {
                if (c.accountid != trigger.oldMap.get(c.id).Accountid) {
                    accountids.add(c.accountid);
                    accountids.add(trigger.oldMap.get(c.id).Accountid);
                }
            }
        }

        if (trigger.isDelete) {
            for (contact c : trigger.old) {
                if (c.accountid != null) {
                    accountids.add(c.accountid);
                }
            }
        }

    }

    if (!accountids.isEmpty()) {
        List<Account> accList = [select id, name, Number_Of_Contacts__c, (select id, name from Contacts) from Account where id in : accountids];

        
        for (account acc : accList) {
            acc.Number_Of_Contacts__c = acc.Contacts.size();
        }
        update accList;
    }
    */
}