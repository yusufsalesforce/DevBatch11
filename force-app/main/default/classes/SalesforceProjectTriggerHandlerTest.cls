@isTest
public class SalesforceProjectTriggerHandlerTest {
    @isTest
    private static void testSPUpdateDescription() {
        salesforce_project__c sp1 = new salesforce_project__c();
        sp1.Project_name__c = 'SP Test 1';
        salesforce_project__c sp2 = new salesforce_project__c();
        sp2.Project_name__c = 'SP Test 2';

        List<salesforce_project__c> listSP = new List<salesforce_project__c>{sp1,sp2};
        insert listSP;

        Set<Id> setSPid = new set<id>{sp1.id,sp2.id};

        Test.starttest();
        SalesforceProjectTriggerHandler.spUpdateDescription(setSPid);
        Test.stopTest();
        List<salesforce_project__c> allSP = [select id,description__c from salesforce_project__c ];
        System.Assert(allSP[0].description__c.contains('future'));
    }
}
