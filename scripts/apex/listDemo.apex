ListDemo.allCats();

string valueAt2 = ListDemo.cadidatesList(2);
system.debug(valueAt2);

string valueAt5 = ListDemo.cadidatesList(5);
system.debug(valueAt5);


ListDemo.randomIntegerList();

List<String> listStr = new List<String>();
listStr.add('Heyoo');

if (listStr.isEmpty()){
    System.debug('list is EMPTY OKAY?');
}



list<integer> listInteger = new List<Integer>();
        listInteger.add(10); //0
        listInteger.add(15); //1
        listInteger.add(21); //2
        listInteger.add(15); //3
        listInteger.add(15); //4
        listInteger.add(18); //5
        System.debug('before sort ' + listInteger);

        // sort metodu ile listedekileri a dan z ye dizdik.
        listInteger.sort();
        System.debug('after sort ' + listInteger);

        
List<String> listSample;
