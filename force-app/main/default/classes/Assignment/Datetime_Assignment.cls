public class Datetime_Assignment {
    public void diffofDate() {
        Date varTomorrowDate = Date.newInstance(2022, 11, 16);
        Date varTodaysDate = Date.newInstance(2022, 11, 15);

        Integer differenceDay = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug('Date Diffrence => ' + differenceDay + ' day');
    }
    public void Timecheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2022,11,16,07,00,00);
        Datetime var10DaysDatetime = Datetime.newInstance(2022,11,25,09,00,00);
        Long varDatetimeLong  = 12339874361L;
        
        Datetime added7Day = varTomorrowDatetime.addDays(7);
        System.debug('7 days after tomorrow => ' + added7Day);

        Datetime added10Day = var10DaysDatetime.addDays(10);
        System.debug('10 days after 10 days => ' + added10Day);
        
    }
    public void deneme(){
        Datetime birthDay = Datetime.newInstance(1989,03,15,12,30,00);

    }
}




/* Date varTomorrowDate = date.today();
        Date tomorrow = varTomorrowDate.addDays(1);
        System.debug('Bugünün tarihi => ' + varTomorrowDate);
        System.debug('Yarının tarihi => ' + tomorrow); */