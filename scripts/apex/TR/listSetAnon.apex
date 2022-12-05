
List<String> sehirList = new List<String>{'istanbul', 'Ankara', 'Baku', 'Sakarya', 'ankara', 'Baku', 'Kirklareli','Ankara'};
System.debug(sehirList);

Set<String> ulkeSet = new Set<String>{'Turkiye', 'USA', 'Hollanda', 'Turkiye', 'turkiye', 'Almanya', 'Hollanda'};
System.debug(ulkeSet);


Set<String> sehirSet = new Set<String>();
sehirList.addAll(ulkeSet);
System.debug(sehirList);

Map<Integer, String> plakalar = new Map<Integer, String>();
plakalar.put(34, 'istanbul');
plakalar.put(41, 'Kocaeli');
plakalar.put(41, 'izmit');
plakalar.put(06, 'Ankara');
plakalar.put(35, 'izmir');
plakalar.put(36, 'izmir');
System.debug(plakalar);



Map<string, list<string>> yoreselYemekler = new Map<string, list<string>>();
List<String> y1 = new List<String>{'Baklava', 'Sarma', 'Kunefe'};
yoreselYemekler.put('Gaziantep', y1);

List<String> y2 = new List<String>{'iskender', 'Kestane sekeri', 'Cantik'};
yoreselYemekler.put('Bursa', y2);

List<String> y3 = new List<String>{'dolma', 'pilav', 'levengi'};
yoreselYemekler.put('Baku', y3);

System.debug('yoresel yemekler Map => ' + yoreselYemekler);


Map<String, list<String>> yoreselYemekler = new Map<String, list<String>>();
List<String> y1 = new List<String>{'Baklava', 'Sarma', 'Kunefe'};
yoreselYemekler.put('Gaziantep', y1);
System.debug('yoresel yemekler Map => ' + yoreselYemekler);

List<String> y2 = new List<String>{'iskender', 'Kestane', 'Kunefe'};
yoreselYemekler.put('Bursa', y2);
System.debug('yoresel yemekler Map => ' + yoreselYemekler);

List<String> y3 = new List<String>{'dolma', 'pilav', 'levengi'};
yoreselYemekler.put('Baku', y3);

System.debug('yoresel yemekler Map => ' + yoreselYemekler);