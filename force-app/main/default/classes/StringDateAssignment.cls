public class StringDateAssignment {
    public void StringMethods(){
        string firstName = 'John';
        System.debug(firstName);

        string lastName = 'Doe';
        System.debug(lastName);

        //string Fullname
        string fullName = firstName + ' ' + lastName;
        System.debug(fullName);

        //
        integer a = 11;
        Integer b = 22;
        decimal c = (a+b)/2;

        System.debug('a =' + a);
        System.debug('b =' + b);
        System.debug('c =' + c);

        string cumle1 = 'salesforce ogreniyorum..';
        System.debug('orjinal cumlem => ' + cumle1);
        // bir metodun yaptığı değişikliği görmenin iki yolu var..
        // 1 bir değişkene assign ederim sonra yazdırırım.
        string cumle2 = cumle1.capitalize();
        System.debug('1. yol assign etme => ' + cumle2);

        // metotla beraber system debug içine yazarız..
        System.debug('2. yol debug içinde görme => ' + cumle1.capitalize());

        Boolean control1 = cumle1.contains('SalesForce');
        System.debug('Contains metodu; SalesForce kelimesi ' + cumle1 + ' içinde var mı? ' + control1);

        Boolean control2 =  cumle1.containsIgnoreCase('SalesForce');
        System.debug('containsIgnoreCase metodu ; SalesForce kelimesi ' + cumle1 + ' içinde var mı? => ' + control2);

        Decimal sayi = cumle1.length();
        System.debug(cumle1 + ' cümlesinde ' + sayi + ' adet karakter vardır.');
    }
    public void dataMethods(){
        date mydate = date.newInstance(1960, 02, 17);
        System.debug(mydate);

        Date bugun = date.today();
        System.debug(bugun);

        // yas hesaplama
        // dogum tarihi 15-03-1989

        //1.dogum tarihi değişkene atayalım, 
        date dogumtarihi = date.newInstance(1989, 03, 15);
        //2. bugünün tarihini yukarıda bulmuştum.
        // İki tarih arasındaki gün sayısını çıkarma yaparak bulalım /365 diyerek yaş hesaplayacağız.
        // fark gün sayısı olarak gelecektir.

        Integer gunsayisi = dogumtarihi.daysBetween(bugun);
        decimal yas = gunsayisi/365;
        System.debug(yas);


        // monthsBetween metodu ile kaç ya olduğunu bulalım.
        integer aysayisi = dogumtarihi.monthsBetween(bugun);
        decimal yas2 = aysayisi/12;
        System.debug(yas2);

        Datetime zaman = Datetime.now();
        System.debug(zaman);
    }

}