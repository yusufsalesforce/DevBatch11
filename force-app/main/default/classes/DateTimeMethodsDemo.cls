public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        date dttoday = date.today();

        date bDate = date.newInstance(1989, 15, 03);
        
        integer age = bDate.monthsBetween(dttoday);
        System.debug(age/12);

        integer age1 = bdate.daysBetween(dttoday);
        System.debug('Yusuf Days => ' + age1);
    }
    public void calculateAgeInDays() {
        date dttoday = date.today();

        date bDate = date.newInstance(1992, 04, 26);
        
        integer age1 = bdate.daysBetween(dttoday);
        System.debug('Yusuf Days => ' + age1);
    }
    public void printSubscriptionEndDate(){
        Date subscriptionStartDate = Date.today();

        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        System.debug('Subscription end on ' + subscriptionEndDate);

        Integer endDateYear = subscriptionEndDate.year();
        System.debug('subscription end date YEAR is ' + endDateYear);

        Integer endDateMonth = subscriptionEndDate.month();
        System.debug('subscription end date Month is ' + endDateMonth);
    }
    public void printOfferEndDateTime(){
        Datetime dtNow = datetime.now();

        Datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer end date & time ' + dtOfferEnd);

        date dateOfferEnd = dtOfferEnd.date();
        system.debug('date of offer end ' + dateOfferEnd);
    }
    public void birthDateToMilliSeconds(){
        Datetime birthDay = Datetime.newInstance(1989, 03, 15, 12, 30, 07);
        long LongBrithDate = birthDay.getTime();
        System.debug('long birth date => ' + LongBrithDate);
        // get.Time ile mili saniye cinsinden doğum tarihimizi aldık.
    }
}
