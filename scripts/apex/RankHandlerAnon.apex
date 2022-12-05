RankHandler rk = new RankHandler();

String p1 = rk.rankPrice(1);
System.debug('p1 is ' + p1);

String p2 = rk.rankPrice(2);
System.debug('p2 is '+ p2);

String p5 = rk.rankPrice(5);
System.debug('p5 is '+ p5);

String p15 = rk.rankPrice(15);
System.debug('p15 is '+p15);



RankHandler rk1 = new RankHandler();
string p11 = rk1.rankPriceSwitch(1);
system.debug('p11 is ' + p11);

string p22 = rk1.rankPriceSwitch(2);
system.debug('p22 is ' + p22);


string p55 = rk1.rankPriceSwitch(5);
system.debug('p55 is ' + p55);


string p155 = rk1.rankPriceSwitch(15);
system.debug('p155 is ' + p155);