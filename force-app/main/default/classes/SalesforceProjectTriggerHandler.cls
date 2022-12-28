public with sharing class SalesforceProjectTriggerHandler {
    /*
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

    @future
    public static void spUpdateDescription(set<id> setSpId) {

        List<salesforce_project__c> allSP = [select id,description__c from salesforce_project__c where id in : setSpId];
        for (salesforce_project__c item : allSP) {
            item.description__c += '. Updated from future';
        }
        update allSP;
    }
    */




    //* aaa
    public static void spStatusCompleted(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld,Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
        
        //get spIds whose status is changed to 'Completed'
        set<id> spCompleted = new set<id>();
        for (Salesforce_project__c sp : spTriggerNew) {
            //how to get if status is changed to completed?
            //compare old and new value
            if (sp.Status__c == 'Completed' && sp.Status__c != spTriggerOldMap.get(sp.id).Status__c) {
                spCompleted.add(sp.Id);
            }
        }
        //call future method to update tickets.
        if (!spCompleted.isEmpty()) {
            updateTicketStatus(spCompleted);
        }

    }

    //* bbb
    @future
    public static void updateTicketStatus(set<id> ProjectIds) {
        //get all tickets
        List<salesforce_ticket__c> allTickets = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
        where Salesforce_Project__c in :ProjectIds and status__c != 'Completed'];

        //set status to completed
        for (salesforce_ticket__c eachST : allTickets) {
            eachST.Status__c = 'Completed';
        }
        update allTickets;
        //update tickets.
    }
}
