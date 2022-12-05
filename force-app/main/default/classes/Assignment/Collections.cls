public class Collections {
    public static string listaAssignment(integer a) {

        List<String> LstMonth = new List<String>();
        
        LstMonth.add('January');
        LstMonth.add('Febrary');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
        //System.debug('Aylar ' + LstMonth);
        
        String output_month = '';
        
        Integer listsize = LstMonth.size();
        
        if (a>=1 && a<listsize) {
            output_month = LstMonth[a-1];
            //Call listassignment with passing value as 1 display the output as January
        } else {
            output_month = 'Not a valid month';
        }
        return output_month;
    }
}
