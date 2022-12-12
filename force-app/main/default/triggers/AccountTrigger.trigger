trigger AccountTrigger on Account (before insert, before update,after insert, after update) {
    /*
    if(trigger.isBefore && trigger.isInsert){
        System.debug('account before insert trigger.old ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        System.debug('account after insert trigger.old ' + trigger.old);
    }
    if(trigger.isBefore && trigger.isUpdate){
        System.debug('account before Update trigger.old ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('account after Update trigger.old ' + trigger.old);
    }*/

    //

    /*
    if(trigger.isUpdate){
        for(account oldAcc : trigger.old){
            System.debug('old acc id = ' + oldAcc.id + 'old acc name = ' + oldAcc.name );
        }
        for(account newAcc : trigger.new){
            System.debug('new acc id = ' + newAcc.id + 'new acc name = ' + newAcc.name );
        }
    }
    */
    /*
    if(trigger.isAfter){
        List<Account> accTriggerNew = trigger.new;

        set<id> setIds = new set<id>();
        for(account newAcc : accTriggerNew){
            id accId = newAcc.id;
            setIds.add(accId);
        }
        System.debug(setIds);
    }
    */

    /*
    List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old => ' + accTriggerOld);
        system.debug('before insert new => ' + accTriggernew);
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old => ' + accTriggerOld);
        system.debug('after insert new => ' + accTriggernew);
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old => ' + accTriggerOld);
        system.debug('before update new => ' + accTriggernew);
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old => ' + accTriggerOld);
        system.debug('after update new => ' + accTriggernew);
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    }
    */

    /*
    List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
    
    if (trigger.isAfter && trigger.isUpdate) {
        
        set<id> accountIds = accTriggerNewMap.keySet();
        for (id eachId : accountIds) {
            account newAcc = accTriggerNewMap.get(eachId);
            System.debug('New Acc name is => ' + newAcc.name);

            account oldAcc = accTriggerOldMap.get(eachId);
            System.debug('Old Acc name is => ' + oldAcc.name);

        }
    }
    */

    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    }














    // System.debug('====== trigger tetiklendi..======');
    // System.debug('trigger is before..' + trigger.isBefore);
    // System.debug('trigger is after..' + trigger.isAfter);
    // System.debug('trigger is insert..' + trigger.isInsert);
    // System.debug('trigger is update..' + trigger.isUpdate);
    // System.debug('====== trigger bitti..======');




    /*
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('BEFORE UPDATE new record ==> '  + accTriggerNew);
        system.debug('BEFORE UPDATE  new accounts size ==> ' + accTriggerNew.size());
        
        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('AFTER newly UPDATE record ==> '  + accTriggerNew);
        system.debug('AFTER newly UPDATE accounts size ==> ' + accTriggerNew.size());
        
        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }*/
    
    /*
    list<account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('BEFORE INSERT new record ==> '  + accTriggerNew);
        system.debug('BEFORE INSERT  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('AFTER newly inserted record ==> '  + accTriggerNew);
        system.debug('AFTER newly inserted accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    */


    /*
    //insert
    if (trigger.isinsert && trigger.isBefore) {
        System.debug('account after insert trigger called');
    }
    if (trigger.isInsert && trigger.isAfter) {
        System.debug('account before insert trigger called');
        
    }
    //update
    if (trigger.isUpdate && trigger.isBefore) {
        System.debug('account before update trigger called');
        
    }
    if (trigger.isUpdate && trigger.isAfter) {
        System.debug('account after update trigger called');
        
    }
    */
    
    /* 
    if (Trigger.isInsert) {
        System.debug('account before insert trigger called.');
    }

    if (Trigger.isUpdate) {
        System.debug('account before UPDATE trigger called.');
    }
     */
    



    /*
    System.debug('account before insert trigger called.');
    System.debug('account after insert trigger called.');
    // burada consola 4 adet debug gider 2 before için 2 taneside after için
    */
    /*
    if (Trigger.isBefore) {
        System.debug('before insert trigger.');
    }
    if (Trigger.isAfter) {
        System.debug('after insert trigger.');
    }
    */
}