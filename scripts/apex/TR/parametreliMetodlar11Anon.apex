
ParametreliMetodlar11 pm1 = new ParametreliMetodlar11();
String metin = 'Salesforce Developer olma yolunda ilerliyorum.';
Integer uzunluk = pm1.uzunluk(metin);
System.debug(metin + ' cumlesinin karakter sayısı = ' + uzunluk);

ParametreliMetodlar11 pm2 = new ParametreliMetodlar11();
System.debug( pm2.rakamSayisi(3333));

integer rakamsay = pm2.rakamSayisi(4444444);
System.debug('sayının rakam adedi => ' + rakamsay);

ParametreliMetodlar11 pm3 = new ParametreliMetodlar11();
integer sonuc1 = pm3.sum(11, 22);
System.debug('sonuc1 => ' + sonuc1);

integer sonuc2 = pm3.subt(44, 33);
System.debug('sonuc2 => ' + sonuc2);

decimal bolme = sonuc1/sonuc2;
System.debug('iki işlemin bolme sonucu => ' + bolme);

ParametreliMetodlar11 pm4 = new ParametreliMetodlar11();
pm4.muhasebe('Sefiller', 4, 39.90);
