
MathPractice m1 = new MathPractice();
m1.ifBread('kek', 3);
m1.ifBread('ekmek', 2);
m1.ifBread('simit', 2);


MathPractice m2 = new MathPractice();
m2.whenMethod('kek', 2);


MathPractice calc = new MathPractice();
calc.practiceOne(12.58, 15.28);

calc.practiceTwo(1.78, 85.5);




MathPractice m3 = new MathPractice();
m3.practiceThree('cevre', 3.2, 4.654);
m3.practiceThree('alan', 3.2, 4.654);
m3.practiceThree('hacim', 3.2, 4.654);


MathPractice m4 =new MathPractice();
system.debug(m4.practiceFour(45,1.71));
system.debug(m4.practiceFour(65,1.71));
system.debug(m4.practiceFour(85,1.71));
system.debug(m4.practiceFour(205,1.71));


MathPractice m5 =new MathPractice();
m5.counter(5);

MathPractice m6 =new MathPractice();
m6.counter1(6);









MathPractice ob1 = new MathPractice();
System.debug(ob1.practiceFive(10, 10));

System.debug(ob1.practiceFive(5, 10));
System.debug(ob1.practiceFive(10, 5));

System.debug(ob1.practiceFive(5, 6));
System.debug(ob1.practiceFive(-5, -3));





//SORU 16: Elemanları ‘Dünya, Venüs , Mars, Merkür, Satürn, Jupiter’ olan bir Liste oluşturun. Listenin boş olup olmadığını kontrol ederek ekrana yazdıran bir kod yazın


List<String> gezegenlist = new List<String> {'Dünya', 'Venüs' , 'Mars'};
System.debug(gezegenlist);

gezegenlist.add('Merkür');
gezegenlist.add('Satürn');
gezegenlist.add('Jupiter');

System.debug(gezegenlist);

Boolean checkgezegenlist = gezegenlist.isEmpty();
System.debug('GezegenList listesi boş mu ? '+ checkgezegenlist);



ğ