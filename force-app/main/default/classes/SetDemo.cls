public class SetDemo {
    public static void citySet() {

        set<String> cities = new set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');
        System.debug(cities);
        
    }

    public static void randomIntegerSet() {
        Set<Integer> setInt = new Set<Integer>();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);
        System.debug(setInt);
    }

    public static set<integer> setFromList(list<integer> intList) {
        set<integer> returnSet = new set<integer>();
        returnSet.addAll(intList);
        return returnSet;
    }

    public static Set<String> capitalizeSet(Set<string> setStr) {
        Set<String> returnSet = new Set<String>();

        for (string eachString : setStr) {
            String tempString =eachString.toUpperCase();
            returnSet.add(tempString);

        }
        return returnSet;
    }
}
