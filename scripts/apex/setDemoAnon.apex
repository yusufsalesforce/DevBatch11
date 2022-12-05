
//1 citySet
SetDemo.citySet();

//2 randomIntegerSet
SetDemo.randomIntegerSet();

//3 setFromList
list<integer> listInteger = new List<Integer>();
listInteger.add(10); //0
listInteger.add(15); //1
listInteger.add(21); //2
listInteger.add(15); //3
listInteger.add(12); //4
listInteger.add(18); //5
system.debug('list -> ' + listInteger);

Set<Integer> setInt = SetDemo.setFromList(listinteger);
system.debug('set -> ' + setInt);


//4 capitalizeSet
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
System.debug(SetDemo.capitalizeSet(cities));