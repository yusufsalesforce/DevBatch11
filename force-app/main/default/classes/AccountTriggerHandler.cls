public class AccountTriggerHandler {
    

    


    // soru 23 - Aynı isimde birden fazla Account oluşmasına müsade etmeyen ve kullanıcıya mesaj veren bir trigger (triggerHandlerClass) tasarlayınız. 
    /*
    public static void sameNameValidation(List<Account> newList, List<Account> oldList, Map<Id,Account> newMap, Map<Id,Account> oldMap) {
        
        List<account> accList = [select id, name from Account where name = : newList[0].name];

        if (accList.size()!=0) {
            newList[0].name.addError('Ayni isimle ikinci account oluşturamazsiniz');
        }

    }
    */

    /*
    public static void sameNameValidation1(List<Account> newList, List<Account> oldList, Map<Id,Account> newMap, Map<Id,Account> oldMap) {
        
        List<Account> accList = [select name from Account];

        for (account accNew : newList) {
            for (account accDataBase : accList) {
                if (accNew.name==accDataBase.Name) {
                    accNew.Name.addError('Ayni isimle ikinci account oluşturamazsiniz');
                }
            }
        }
    
    }
    */


    /*
    public static void sameNameValidation2(List<Account> newList, List<Account> oldList, Map<Id,Account> newMap, Map<Id,Account> oldMap) {
        
        Set<String> newSetName = new Set<String>();

        for (account accNew : newList) {
            newSetName.add(accNew.name);
        }

        List<Account> accList = [select id,name from Account where name in : newSetName];

        if (accList.size()!=0) {
            for (account accNew : newList) {
                for (account accL : accList) {
                    if (accNew.name == accL.name) {
                        accNew.Name.addError('Ayni isimle ikinci account oluşturamazsiniz');
                    }
                }
            }
        }
    }
    */
    /*
    public static void sameNameValidation3(List<Account> newList, List<Account> oldList, Map<Id,Account> newMap, Map<Id,Account> oldMap) {
        
        Set<String> newSetName = new Set<String>();

        for (account acc : newList) {
            newSetName.add(acc.name);
        }

        List<Account> accList = [select name from Account where name in : newSetName];

        if (accList.size()!=0) {

            Set<String> accListName = new Set<String>();

            for (account acc : accList) {
                accListName.add(acc.name);
            }

            for (account acc : newList) {

                if (accListName.contains(acc.name)) {
                    acc.Name.addError('Ayni isimle ikinci account oluşturamazsiniz');
                }
            }
        }
    }
    */


    // soru 24 -Bir Account oluştuğunda, o Account'a bağlı bir Opportunity ve bir Contact oluşturan bir trigger (triggerHandlerClass) tasarlayınız.
    /*
    public static void createOppAndCnt(List<Account> newList, List<Account> oldList, Map<Id,Account> newMap, Map<Id,Account> oldMap) {
        List<Contact> cntList = new List<Contact>();
        List<opportunity> oppList = new List<opportunity>();
        for (account item : newList) {
            System.debug(item.id);
            contact cnt = new contact();
            cnt.lastname = item.name + 'cnt';
            cnt.Accountid = item.id;
            cntList.add(cnt);

            opportunity opp = new opportunity();
            opp.name = item.name + 'opp';
            opp.closeDate = date.newInstance(2022, 12, 25);
            opp.stagename = 'Needs Analysis';
            opp.Accountid = item.id;
            oppList.add(opp);
        }
        insert cntList;
        insert oppList;
        
    }
    */






    /*
    public static void updateVIPforContacts(List<Account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

        set<id> accIds = new set<id>();

        for (account item : accTriggerNew) {
            if (item.VIP__c != accTriggerOldMap.get(item.id).VIP__c) {
                accIds.add(item.id);
            }
        }
        List<contact> allContact = [select id, vip__c, accountid from contact where accountid in :accIds];

        for (contact item : allContact) {
            item.vip__c = accTriggerNewMap.get(item.Accountid).vip__c;
        }
        update allContact;
    }
    */




    // tr ödev - soru 22
    /*
    public static void annualRevenue(List<Account> newList, List<Account> oldList, Map<Id,Account> newMap, Map<Id,Account> oldMap) {
        
        for (account item : newList) {
            if (oldMap.get(item.id).AnnualRevenue == null) {
                oldMap.get(item.id).AnnualRevenue = 0;
            }
            if (item.AnnualRevenue == null) {
                item.AnnualRevenue = 0;
            }
            if (item.AnnualRevenue != oldMap.get(item.id).AnnualRevenue ) {

                item.description = 'New AnnualRevenue - Old AnnualRevenue => (' + (item.AnnualRevenue - oldMap.get(item.id).AnnualRevenue) + ')';
            }
        }

    }
    */






    /*
    public static void updateDescription(
    List<Account> accTriggerNew,
    List<account> accTriggerOld,
    Map<id, account> accTriggerNewMap,
    Map<id, account> accTriggerOldMap) {
        for (account eachAcc : accTriggerNew) {
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
                Account oldAccount = accTriggerOldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = accTriggerNewMap.get(eachAcc.Id);
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
    
}