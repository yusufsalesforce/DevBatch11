trigger AccountTrigger on Account (before insert, before update,after insert, after update) {

    if (Trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //HERE we call handler method to update all contacts VIP field
        AccountTriggerHandler.updateVIPforContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }





    /*
    if (trigger.isAfter && trigger.isInsert) {
        AccountHandler_assg.createContact(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
    */



    /*
    if (trigger.isAfter && trigger.isInsert) {
        AccountTriggerHandler.createOppAndCnt(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }

    */
    /*
    if (trigger.isBefore && trigger.isInsert) {
        AccountTriggerHandler.sameNameValidation1(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }

    */














    /*

    if (Trigger.isAfter && Trigger.isUpdate ) {
        AccountTriggerHandler.updateVIPforContacts(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
    */






    /*
    // tr ödev - soru 22
    if (Trigger.isBefore && Trigger.isUpdate) {
        AccountTriggerHandler.annualRevenue(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
    */



    


    /*
    if (trigger.isBefore && trigger.isUpdate) {
        for (account acc : trigger.new) {
            if (acc.phone != trigger.oldMap.get(acc.id).phone) {
                acc.description = 'Telefon numarası değişti';
            }
            if (acc.name != trigger.oldMap.get(acc.id).name) {
                acc.name.addError('İsim değişikliği yapamazsınız.!');
            }
        }
    }
    */









    // 2. Bir account update edildiğinde name değişmişse description fieldine name değişti mesajı yazdır..
    
    /*
    if (trigger.isBefore && trigger.isUpdate) {
        for (account acc : trigger.new) {
            if (acc.name != trigger.oldMap.get(acc.id).Name) {
                acc.description = 'Bu record un ismi değişti';
            }
        }
    }
    */




    //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
    /*
    if (trigger.isAfter && trigger.isInsert) {

        List<Contact> conList = new List<Contact>();

        for (account acc : trigger.new) {
            for (Integer i = 1; i <= 7; i++) {
                contact c = new contact();
                c.firstname = acc.name ;
                c.lastname = 'Contact ' + i;
                c.Accountid = acc.id;
                conList.add(c);
            }
        }
        insert conList;
    }
    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    if (trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
    */





    /*
    if (trigger.isBefore) {
        System.debug('before insert/update trigger on Account object');
        for (account eachAcc : trigger.new) {

            if (trigger.isInsert && eachAcc.active__c == 'Yes') {
                eachAcc.description = 'Account is now active. Enjoy!';
            }

            if (trigger.isUpdate) {

                Account oldAccount = trigger.oldMap.get(eachAcc.id);
                Account newAccount = trigger.newMap.get(eachAcc.id);

                if (eachAcc.active__c == 'Yes' && oldAccount.active__c != newAccount.active__c) {
                    
                    eachAcc.description = 'Account is now active. Enjoy!';
                }
            }

        }
    }

    */
    /*
    if (Trigger.isBefore) {
        for (account eachAcc : Trigger.new) {
            boolean updateDesc = false;
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                //just update field
                updateDesc = true;
            }
            //if account is updated.
                //check if active field is changed from not yes to yes
                //then update description
            if (Trigger.isUpdate) {
                //get old account using OldMAP
                Account oldAccount = Trigger.OldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = Trigger.NewMap.get(eachAcc.Id);
                //oldAccount.Active__c != newAccount.Active__c
                if (eachAcc.Active__c == 'Yes' &&
                    oldAccount.Active__c != newAccount.Active__c ) {
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is now active. Enjoy buddy!!';
            }
        }
    }

    */





    
    
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

    /*
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
    */




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