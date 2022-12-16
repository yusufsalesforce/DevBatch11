public class AccountTriggerHandler {
    
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