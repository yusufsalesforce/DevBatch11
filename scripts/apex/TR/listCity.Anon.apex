
List<String> listCity = new List<String>{'Madrid', 'Amsterdam' , 'İstanbul', 'New York', 'Paris'};
// 1. Listenin eleman sayısını yazdıralım.
Integer listCitySize = listCity.size();
System.debug('listCity have ' + listCitySize + ' item.');

// 2. Listenin ilk ve son elemanını ilgili methodu kullanarak yazdıralım.
System.debug('First item = ' + listCity.get(0)+ ', ' + 'Last item = ' + listCity.get(listCity.size()-1));

// 3. Listede 'İstanbul'  ve 'Roma' olup olmadığını kontrol edip yazdıralım.
Boolean checkIstanbul = listCity.contains('İstanbul');
Boolean checkRoma = listCity.contains('Roma');
System.debug('is listCity list have İstanbul => '+checkIstanbul);
System.debug('is listCity list have Roma => '+checkRoma);

// 4. Listenin her elemanına ' City' ifadesini tek tek ekleyip system.debug ile yazdıralım (For each yöntemini kullanalım).
for(String item : listCity){
    System.debug(item + ' City');
}
// 5. setCity adında String elemanlardan oluşan boş bir Set oluşturalım.
Set<String> setCity = new Set<String>{};
System.debug('setCity => ' + setCity);

// 6. setCity adlı sete ListCity listesini ekleyelim.
setCity.addAll(listCity);

// 7. setCity i system.debug ile yazdıralım.
System.debug('setCity => ' + setCity);

// 8. 'Paris' elemanını set den çıkaralım.
setCity.remove('Paris');
System.debug('setCity without Paris => ' + setCity);

// 9. Sete 'İstanbul' ve 'Madrid' elemanlarını ekleyelim.
setCity.add('İstanbul');
setCity.add('Madrid');
System.debug('After İstanbul, Madrid => '+  setCity );

// 10. Seti ve kaç elemanlı olduğunu aynı System.debug içerisinde yazdıralım.
System.debug('setCity => ' + setCity + ', setCity size => ' + setCity.size());

// 11. Setin tüm elemanlarını tek bir methodla silelim.
setCity.clear();

// 12. Setin boş olup olmadığını kontrol edip System.debug ile yazdıralım.
System.debug('After clear => ' + setCity);