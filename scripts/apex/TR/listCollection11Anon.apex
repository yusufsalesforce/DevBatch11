
List<String> isimList = new List<String>();
isimList.add('Berna');
isimList.add('Fatma');
isimList.add('Rabia');
isimList.add('Samet');
isimList.add('Aslı');

System.debug(isimList);
System.debug('index numarası 2 olan isim '+ isimList.get(2));

System.debug('index numarası 2 olan isim '+ isimList[2]);

Boolean check = isimList.contains('Ziynet');
System.debug('Var mı ' + check);

Boolean check1 = isimList.contains('Samet');
System.debug('Var mı ' + check1);


String silinenIsim = isimlist.remove(0);
System.debug('silinen isim = '+ silinenIsim);
System.debug('listenin son hali =' + isimList);

// size listede kaç eleman olduğunu döndürür.
System.debug('Liste numarası ' + isimList.size());

isimList.sort();
System.debug('Listemin sort dan sonraki hali ' + isimList);



List<String> isimList2 = new List<String>{'Ziynet', 'Aslı', 'Yusuf', 'Samet', 'Serpil'};
ListCollection11.printListEachItem(isimList2);



List<Decimal> dlist = new List<Decimal>{11, 12, 4, 34, 7, 99, 24.5};
ListCollection11.listEachItemSum(dlist);
System.debug(dlist + ' elemanlarının toplamı ' + sonuc);

List<Decimal> dlist2 = new List<Decimal>{10, 22, 4.5, 34.8, 7, 99, 24.5};
Decimal avrg = ListCollection11.listItemsAverage(dlist2);
System.debug('Toplam ' + avrg);