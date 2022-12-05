
system.debug('Yusuf AVCI');

String carName = 'Volvo';
System.debug(carName);
String carModel = 'XC90';
System.debug(carModel);
String carColor = 'Black';
System.debug(carColor);

String carInfo = (carName + ' ' + carModel + ' ' + carColor);
system.debug(carInfo);

SalesforceDeveloper ob1 = new SalesforceDeveloper();
ob1.myFirstCode();
SalesforceDeveloper ob2 = new SalesforceDeveloper();
ob2.myFavorites();


MyCity ob4 = new MyCity();
ob4.cityInformation();
MyCity ob3 = new MyCity();
ob3.stringMethod();
MyCity ob5 = new MyCity();
ob5.dateMethod();


// soru 9 adına yapıldı.
Date dogumG = Date.newInstance(1989, 01, 01);
System.debug('Doğum günüm ' + dogumG);

Integer dogumGyear = dogumG.year();
Integer dogumGay = dogumG.month();
Integer dogumGgun = dogumG.day();

System.debug(' Yıl => ' + dogumGyear + ' ay => ' +dogumGay+ ' gün => '+dogumGgun );

integer toplam = dogumGyear+dogumGay+dogumGgun;
System.debug(toplam);

// soru 10 adına yapıldı.
Date maireC = date.newInstance(1867, 11, 07);
Date bugun = date.today();
integer farkGun = maireC.daysBetween(bugun);
System.debug('Marie Curie ' + farkGun + ' gün önce doğmuştur.');

Integer farkAy = maireC.monthsBetween(bugun);
System.debug('Marie Curie ' + farkAy + ' ay önce doğmuştur.');

Integer maireCYil =maireC.year();
Integer bugunYil = bugun.year();
Integer farkYil = bugunYil-maireCYil;
System.debug('Marie Curie ' + farkYil + ' yıl önce doğmuştur.');

Boolean kontrolMaire = Date.isLeapYear(maireCYil );
System.debug('Maire Curie artık yılda mı doğdu ? => '+ kontrolMaire);