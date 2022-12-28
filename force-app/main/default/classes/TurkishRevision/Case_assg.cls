public class Case_assg {
    public static void caseInsert() {
        case c = new case();
        c.subject = 'Testcase';
        c.origin = 'Phone';
        insert c;
        
    }

    public static void caseUpdate() {
        case c = [select id, subject from case where subject = 'Testcase'];
        c.subject = 'Testing case 1';
        upsert c;
    }

    public static void caseDelete() {
        case c = [select id, subject from case where subject like '%case 1%'];
        delete c;
    }
}
