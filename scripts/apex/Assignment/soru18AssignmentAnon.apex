
//SORU 18 : Plaka ve o plakaya ait şehir isimlerinin olduğu bir Map<Integer,String> oluşturalım.
//1.İstanbul(34),Bursa(16),İzmir(35),Konya(42),Gaziantep(27) şehirlerini plaka numaralarıyla mapimize ekleyelim.

Map<Integer, String> plakaMap = new Map<integer, String>{34 => 'istanbul', 16 => 'Bursa', 35 => 'izmir', 42 => 'Konya'};
plakaMap.put(27, 'Konya');
System.debug(plakaMap);

//2.Mapimizde 34(İstanbul) ve 61(Trabzon) ait plakaların olup olmadığını kontrol edelim.
Boolean check34 = plakaMap.containsKey(34);
System.debug(' 34 nolu plaka map içinde mevcut mu => ' + check34);
Boolean check61 = plakaMap.containsKey(61);
System.debug(' 61 nolu plaka map içinde mevcut mu => ' + check61);

//3.Mapimizin eleman sayısnı system.debug ile yazdıralım.
Integer plakaMapSize = plakaMap.size();
System.debug(' plakaMap adlı map\'imizin eleman sayısı ' + plakaMapSize + ' adettir.');

//4.16 nolu plakayı mapimizden çıkaralım.
plakaMap.remove(16);
System.debug(' 16 nolu plaka çıkarıldıktan sonra => ' + plakaMap);

//4.Mapimizdeki plakalardan oluşan yeni bir set oluşturalım.
Set<Integer> plakaSet = plakaMap.keySet();
System.debug(' plakaSet => ' + plakaSet);

//5.Mapimizdeki şehirlerden oluşan yeni bir list oluşturalım.
List<String> plakaVal = plakaMap.values();
System.debug(' plakaVal => ' + plakaVal);

//6.Plaka ve şehir ismini aynı system.debug içerisinde kullanalım.
for (integer item : plakaSet){
    string item2 = plakaMap.get(item);
    System.debug('plaka => ' + item + ' şehir => ' + item2 );
}
