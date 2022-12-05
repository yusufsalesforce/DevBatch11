public class Calculator {

    // void => return type
    // ()   => parameters
    public void welcomeMessages(){
        System.debug('welcome to apex calc ');
    }

    public void printNewMessage(string msg){
        //msg = varName = is used INSIDE the method
        system.debug(msg);

    }
    public string printAndReturnMessage(String msg){

        String returnString = msg + ' ...OK cool';
        return returnString;
    }

    public integer add(integer a, integer b){
        integer sum = a+b;
        return sum;
    }
    public integer add1(integer a, integer b){
        integer sum = a+b;
        return sum;
    }
    public integer add(integer x, integer y, integer z){
        Integer sum = x + y + z;
        return sum;
    }
    public Boolean leapYearCheck(date dt){
        integer year = dt.year();
        Boolean lp = date.isLeapYear(year);
        return lp;
    }
}
