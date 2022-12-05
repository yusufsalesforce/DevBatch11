public class Candidates {

    public String Name;
    public String Gender; 
    public static String CompanyName;
    public static Integer countCandidates =0;

    public Candidates(){
        countCandidates++;
    }

    /* public Candidates( String n, String g){
        this();
        name = n;
        Gender = g ;
    } */

    
    public void printCandidate() {
        System.debug('Name is '+ Name);
        System.debug('Gender is '+ Gender );
        System.debug('Company Name is '+ CompanyName);
    }

    public static void printCandidatesInfo(){
        System.debug('Company name is is is'+ CompanyName);
        //System.debug('Name is '+ Name);

        
    }
}
