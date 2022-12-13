public class Trigger_Map {
    public static id InsertSF_Project() {
        
        Salesforce_Project__c sfp = new Salesforce_Project__c();
        sfp.Project_Name__c = 'Dev11';
        insert sfp;
        return sfp.id;
    }

    public static void UpdateSF_Project(String id, String name1){

        Salesforce_Project__c sfpList = [select id, Project_Name__c from Salesforce_Project__c where id = : id];
        sfpList.Project_Name__c = name1;
        update sfpList;
    }
    
}
