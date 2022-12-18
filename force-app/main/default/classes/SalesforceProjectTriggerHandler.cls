public with sharing class SalesforceProjectTriggerHandler {

    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        List<Salesforce_Ticket__c>  listST = new List<Salesforce_Ticket__c>();

        for (salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
            newST.Subject__c = 'Default ticket';
            newST.Salesforce_Project__c = eachSP.Id;
            listST.add(newST);
        }
        if (!listST.isEmpty()) {
            insert listST;
        }
    }

    public static void completeSPvalidation(List<salesforce_project__c> newList, List<salesforce_project__c> oldList, Map<Id,salesforce_project__c> newMap, Map<Id,salesforce_project__c> oldMap) {

        set<id> spCompletedIds = new set<id>();
        
        for (salesforce_project__c eachSP : newList) {
            if (eachSP.status__c == 'Completed' && eachSP.status__c != oldMap.get(eachSP.id).status__c ) {
                spCompletedIds.add(eachSP.id);
            }
        }

        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where salesforce_project__c in : spCompletedIds and status__c != 'Completed'];

        for (Salesforce_Ticket__c eachST : listST) {
            salesforce_project__c spNew = newMap.get(eachST.salesforce_project__c);
            spNew.addError('Cannot complete project because all tickets are not completed. Go away.');
        }
    }
}
