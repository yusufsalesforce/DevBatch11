@isTest
public class SalesforceProjectTriggerHandlerTest {
    
    @isTest
    private static void createDefaultTicketTest() {

        List<salesforce_project__c> spList = new List<salesforce_project__c>();
        
        salesforce_project__c sp1 = new salesforce_project__c();
        sp1.Project_Name__c = 'Deneme-1';
        sp1.status__c = 'New';
        spList.add(sp1);
        salesforce_project__c sp2 = new salesforce_project__c();
        sp2.Project_Name__c = 'Deneme-2';
        sp2.status__c = 'New';
        spList.add(sp2);
        salesforce_project__c sp3 = new salesforce_project__c();
        sp3.Project_Name__c = 'Deneme-3';
        sp3.status__c = 'New';
        spList.add(sp3);

        insert spList;
        List<Salesforce_Ticket__c> stList = [select id from Salesforce_Ticket__c ];
        System.assertEquals(3, stList.size());
    }
    

    @isTest
    private static void completeSPvalidation() {
        //* Map ler
        Map<Id,salesforce_project__c> oldMap = new Map<Id,salesforce_project__c>();
        Map<Id,salesforce_project__c> newMap = new Map<Id,salesforce_project__c>();
        //* oldList insert
        List<salesforce_project__c> oldList = new List<salesforce_project__c>();        
        salesforce_project__c sp1 = new salesforce_project__c();
        sp1.Project_Name__c = 'Deneme-1';
        sp1.status__c = 'New';
        oldList.add(sp1);
        salesforce_project__c sp2 = new salesforce_project__c();
        sp2.Project_Name__c = 'Deneme-2';
        sp2.status__c = 'New';
        oldList.add(sp2);
        salesforce_project__c sp3 = new salesforce_project__c();
        sp3.Project_Name__c = 'Deneme-3';
        sp3.status__c = 'New';
        oldList.add(sp3);

        insert oldList;
        //* oldList den oldMap oluşturduk
        for (salesforce_project__c item : oldList) {
            oldMap.put(item.id,item);
        }
        //* SOQL den verileri update yapıp newMap oluşturduk
        List<Salesforce_Ticket__c> stList = [select id,subject__c,status__c from Salesforce_Ticket__c];
        for (Salesforce_Ticket__c item : stList) {
            item.status__c = 'Completed';
        }
        update stList;

        List<salesforce_project__c> newList = [select id,Project_Name__c,status__c from Salesforce_Project__c];
        for (salesforce_project__c item : newList) {
            item.status__c = 'Completed';
        }
        update newList;
        for (salesforce_project__c item : newList) {
            newMap.put(item.id,item);
            
        }
        //*
        SalesforceProjectTriggerHandler.completeSPvalidation(newList, oldList, newMap, oldMap);



        System.assertEquals(3, stList.size());
    }
    
}
