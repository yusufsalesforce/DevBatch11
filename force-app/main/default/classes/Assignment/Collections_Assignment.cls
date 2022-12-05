public class Collections_Assignment {

    public static List<String> listMethods() {
        
        List<String> days = new List<String>{'Monday','Tuesday','Wednesday','Thursday','Friday'};
        System.debug(days);

        List<String> days1 = new List<String>{'Monday','Tuesday','Wednesday','Thursday','Friday', 'Saturday','Sunday'};
        System.debug(days1);
        
        days.add('Sunday');
        System.debug('after added element =>' + days);

        days.add(5, 'Saturday');
        System.debug('after added element by index no =>' +days);

        Boolean chechFriday = days.contains('Friday');
        System.debug('is Friday in the list ? => ' + chechFriday);

        Boolean isEquals = days.equals(days1);
        System.debug('is days list equal days1 list => ' + isEquals);

        string get2Day = days.get(2);
        System.debug('get2.Day => ' + get2Day);

        Integer hashCode = days.hashCode();
        System.debug('hashCode => ' + hashCode);

        Integer indexOfSunday = days.indexOf('Sunday');
        System.debug('indexOfSunday => ' + indexOfSunday);

        Boolean isEmptyDays = days.isEmpty();
        System.debug('isEmptyDays => ' + isEmptyDays);

        String remove0 = days1.remove(0);
        System.debug('remove0 => ' + remove0);
        System.debug('after remove index 0 => ' + days1);

        days1.set(0, 'Monday');
        System.debug('After added Monday =>' + days1);

        Integer daysSize = days.size();
        System.debug('remove0 => ' + daysSize);

        days.sort();
        System.debug('after sort => ' + days);

        System.debug(days1.size());
        days1.clear();
        System.debug('after clear => ' + days1.size());
        
        return days;
    }

    public static Set<String> setMethods() {

        Set<String> days2 = new Set<String>{'Monday','Tuesday','Wednesday','Thursday'};
        System.debug(days2);

        Set<String> weekend = new Set<String>{'Monday','Saturday','Sunday'};
        System.debug(weekend);

        days2.add('Friday');
        System.debug('arter added Friday => ' + days2);

        days2.addAll(weekend);
        System.debug(days2);

        Boolean checkMonday = days2.contains('Monday');
        System.debug('checkMonday => ' + checkMonday);

        Boolean checkAll = weekend.containsAll(days2);
        System.debug('checkAll => ' + checkAll);

        Boolean equalSet = days2.equals(weekend);
        System.debug('equalSet => ' + equalSet);

        Boolean isEmptySet = days2.isEmpty();
        System.debug('isEmptySet => ' + isEmptySet);

        Boolean remove1 = weekend.remove('Monday');
        System.debug('remove0 => ' + remove1);
        System.debug('after remove Monday => ' + weekend);

        System.debug('before retain =>' + days2);
        Boolean retainDays = days2.retainAll(weekend);
        System.debug('after retain =>' + days2);

        System.debug('days size => ' + days2.size());

        System.debug('before remove Weekend =>' + days2);
        Boolean removeWeekend = days2.removeAll(weekend);
        System.debug('after remove Weekend =>' + days2);






        return days2;
    }
    
}
