public class MyCity {
    public void cityInformation(){
        String cumle2 = 'Gezmek istediğim yerler => ';
        String cumle3 = 'Avrupa ve Amerika';
        System.debug(cumle2 + cumle3 );
        
        Date kurulusTarih = date.newInstance(1923, 10, 29);
        System.debug('Türkiyenin kuruluş tarihi => '+ kurulusTarih);
        Time gunDogum = Time.newInstance(07, 56, 01, 02);
        System.debug('Gün Doğumu => ' + gunDogum);
        Date bugun = date.today();
        System.debug('bugun => ' + bugun);
        Datetime gecen36ay = bugun.addMonths(-36);
        System.debug('36 AY ÖNCE => '+ gecen36ay);
    }

    public void stringMethod() {
        String cumle1 = 'I am a Salesforce Developer';
        Boolean kontrol1 = cumle1.contains('force');
        System.debug(cumle1 + ' cümlesi "force" kelimesini içeriyor mu? => ' + kontrol1);

        Integer kackarakter = cumle1.length();
        System.debug(cumle1 + ' cümlesi ' + kackarakter + ' karakterdir.');

        String cumle1Buyuk = cumle1.toUpperCase();
        System.debug(cumle1Buyuk);
    }
    public void dateMethod(){
        Date bugun = Date.today();
        System.debug(bugun);

        Datetime suan = Datetime.now();
        System.debug(suan);

        Datetime suan50 = suan.addHours(50);
        System.debug('Şuan + 50 saat => ' + suan50);
    }
}
