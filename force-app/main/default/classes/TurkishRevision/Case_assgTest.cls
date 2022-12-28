@isTest
public class Case_assgTest {
    
    @isTest
    private static void caseInsertTest() {
        Case_assg.caseInsert();
        List<case> csList = [select id from case];
        System.assertEquals(1, csList.size());
    }
    @isTest
    private static void caseUpdateTest() {
        Case_assg.caseInsert();
        Case_assg.caseUpdate();
        List<case> csList = [select id,subject from case where subject like '%Testing%'];
        System.debug(csList);
        System.assert(csList[0].subject.contains('Testing'));
    }
    
    @isTest
    private static void caseDeleteTest() {
        Case_assg.caseInsert();
        Case_assg.caseUpdate();
        Case_assg.caseDelete();
        List<Case> csList = [select id from case];
        System.assertEquals(0, csList.size());
    }

}
