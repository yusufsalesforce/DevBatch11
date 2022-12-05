
String month2 = Mapdemo.retrieveMonth(2);
System.debug(month2);

System.debug(mapdemo.retrieveMonth(13));


/* 
map<integer,String> traficCode = new map<integer,String>();
traficCode.put(34,'istanbul');
traficCode.put(37,'Kastamonu');
traficCode.put(25,'Erzurum');
traficCode.put(34,'istanbul');
traficCode.put(22,'Edirne');
traficCode.put(55,'Samsun');

System.debug(traficCode);

integer sayi = 34;

if(traficCode.containsKey(sayi)){
    
    System.debug(traficCode.get(sayi));
}else{
    System.debug('Error');
}

Set<integer> items = traficCode.keySet();
System.debug(items); */