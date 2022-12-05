public class MathPractice {
    public decimal practiceOne(Decimal deger1, Decimal deger2) {
        Decimal cevreUzn = (deger1+deger2)*2;
        System.debug(cevreUzn);
        return cevreUzn;
    }

    public decimal practiceTwo(Decimal boy, Decimal kilo){
        Decimal vucutEndex = kilo/(boy*boy);
        Decimal result1 = kilo.divide(boy*boy, 3);
        System.debug('Vücut kitle Endeksiniz ' + vucutEndex);
        System.debug(' 3 karakter ile sınırlandırılmış hali => ' + result1);
        return result1;
        // yukarıda kullandığımız divide formulüyle virgülden sonra gelen sayıları 3 karakter ile sınırladık.
    }




    //SORU 13 : MathPractice” Class’ının içerisine “practiceThree” isimli bir method oluşturun. Bu method dikdörtgenin kısa ve uzun kenar uzunluğunu ve istenen işlemi parametre olarak kabul etsin. ve parametreden gelen isteğe göre bir dikdörtgenin çevre veya alan hesabını return etsin. İstenmeyen bir değer girildiğinde ise hata mesajı versin.
    
    //İpucu: return type : decimal ve kod bloğunu oluştururken switch on statement kullanalım.
    //Extra : İşlem sonucunu en yakın tam sayıya yuvarlayalım.
    public decimal practiceThree(String x, Decimal a, Decimal b){

        Decimal sonuc = 0;
        
        switch on x {
            when 'cevre' {
                sonuc = (a+b)*2;
                Decimal rounded1 = sonuc.round(RoundingMode.HALF_DOWN);
                System.debug('Dikdötgen cevresi = '+ rounded1 + ' metredir.');
            }
            when 'alan' {
                sonuc = (a*b);
                Decimal rounded = sonuc.round(RoundingMode.HALF_DOWN);
                System.debug('Dikdötgen alanı = '+ rounded + ' metrekaredir');
            }
            when else {
                system.debug('Burada sadece cevre ve alan hesaplaması yapılmaktadır.');
            }
        }
        return sonuc;
    }

        /*SORU 14 : .“MathPractice” Class’ının içerisine “practiceFour” isimli bir method oluşturun. Bu method boy ve kilo değerlerini iki adet decimal parametre olarak kabul etsin, vücut kitle indeksini debug ekranına yazdırsın ve aşağıda belirtilen sonuçları return etsin. Sonuç sıfır veya sıfırdan küçük yada otuz veya otuzdan büyük ise hata mesajı versin.
        [İpucu: VKI = Kilo(kg) / (boy(m)  * boy(m) return type : string]
        Extra : a. VKI ‘ni hesaplarken boyun karesini ilgili decimal metodu ile alınız.
        b. İşlem sonucunu virgülden sonra bir basamak olacak şekilde düzenleyiniz.*/
        //boy =0;
        //Decimal boykare = (Math.pow(boy, 2)); karesini alma metodu decimal ve integer scoop larında çalışır diye uyarı aldım.
        //Decimal vucutKI = kilo/(boy*boy);
        public String practiceFour(Decimal kilo, Decimal boy){

        Decimal vucutKI = kilo.divide(boy*boy,1);
        String vucutKIst = String.valueOf(vucutKI);
        String VKI;

        if (vucutKI>0 && vucutKI<18.4) {
            System.debug('Vücut Kitle Endeksiniz => '+ vucutKIst);
            VKI = 'ZAYIF';
        } else if (vucutKI>18.5 && vucutKI<24.9) {
            System.debug('Vücut Kitle Endelksiniz => '+ vucutKIst);
            VKI = 'NORMAL';
        } else if (vucutKI>25 && vucutKI<29.9) {
            System.debug('Vücut Kitle Endeksiniz => ' + vucutKIst);
            VKI = 'KİLOLU';
        } else {
            System.debug('Vücut Kitle Endeksiniz => ' + vucutKIst);
            VKI = 'Lütfen girmiş olduğunuz değerleri kontrol ediniz.';
        }

        return VKI;
    }

    // SORU 14 : decimal metodu ile; henüz bitmedi....
    public Decimal practiceFour1(Decimal kilo, Decimal boy){
        Decimal boykare = Math.sqrt(boy);
        System.debug(boykare);
        Decimal vucutKI = kilo.divide(boykare,1);
        //String vucutKIst = String.valueOf(vucutKI);

        if (vucutKI>0 && vucutKI<18.4) {
            System.debug('Vücut Kitle Endeksiniz => '+ vucutKI);
            System.debug('ZAYIF');
        } else if (vucutKI>18.5 && vucutKI<24.9) {
            System.debug('Vücut Kitle Endelksiniz => '+ vucutKI);
            System.debug('NORMAL');
        } else if (vucutKI>25 && vucutKI<29.9) {
            System.debug('Vücut Kitle Endeksiniz => ' + vucutKI);
            System.debug('KİLOLU');
        } else {
            System.debug('Vücut Kitle Endeksiniz => ' + vucutKI);
            System.debug('Lütfen girmiş olduğunuz değerleri kontrol ediniz.');
        }

        return vucutKI;
    }

    //SORU 15: .“MathPractice” Class’ının içerisine “practiceFive” isimli bir method oluşturun. Bu method iki integer parametere kabul etsin ve iki parametre arasındaki sayıların toplamını return etsin.[İpucu: Toplama işlemine parametre değerleri dahil edilmeli ve parametrelerin eşitlik durumunda iki parametre toplanmalıdır.]

    public Integer practiceFive(Integer m, Integer n){
        
        integer toplam = 0;
        if (m<n) {
            for (Integer i = m; i < n+1; i++) {
                toplam += i; 
            }
        } else if (n<m) {
            for (Integer i = n; i < m+1; i++){
                toplam += i;
            } 
        } else {
            toplam = m+n;
        }
        return toplam;
    }
    // Decimal larger = math.max(12.3, 156.6);

    

















    // öbceki gün pratiği
    public void esitlikkotrolu(integer a, integer b){
        if(a>b){
            system.debug(a + ' sayısı '+ b + ' sayısından büyüktür.');
        } else if (b>a){
            System.debug(b + ' sayısı ' + a + ' sayısından büyüktür.');
        } else {
            System.debug(a +' sayısı '+b + ' sayısına eşittir.');

        }
        
    }

    /* Soru 2)  Ekmek, simit ve kek siparişlerinden birini istediğiniz adet ile beraber alan 2 parametreli bir metot yazın. size toplam ödeyeceğiniz miktarı mesajla beraber yazsın. 
        Metot: ifBread
        Ekmek : 1 $ 
        Simit : 2 $
        Kek   : 3 $  */
    public void ifBread(String urun, integer piece){
        integer hesap = 0; 

        if(urun=='ekmek'){
            hesap = piece*1;
        } else if (urun=='simit') {
            hesap = piece*2;
        } else if (urun=='kek') {
            hesap = piece*3;
        } else {
            System.debug('Lütfen ürün adedi giriniz.');
        }
        if (hesap!=0) {
        System.debug(piece +' adet '+ urun +' aldınız. Ödeyeceğiniz miktar = '+ hesap);

        }
    }

    public void whenMethod(String urun, integer piece){
        Integer hesap =0;

        switch on urun {
            when 'ekmek' {
                hesap = piece*1;
            }
            when 'simit' {
                hesap = piece*2;
            }
            when 'kek' {
                hesap = piece*3;

            }
        }
        if (hesap!=0){
        System.debug(piece +' adet '+ urun +' aldınız. Ödeyeceğiniz miktar = '+ hesap);
        }
    }

    //3. Parametre olarak integer 'n' sayısını alan, 1'den n'e kadar olan sayıların toplamını return eden metot yazin.
    
    public void counter(integer n){
        integer sum = 0;
        for (integer i=1; i<n; i++) {
            System.debug('i => '+i);

            sum +=i;
            System.debug('sum = ' + sum);
        }

    }

    //3. soruyu while yapin..

    public void counter1(integer n){
        integer sum = 0;
        integer i=1;
        while (i<n) {
            sum+=i;
            System.debug('sum ' +sum);
            i++;
            System.debug('i '+i);
        }
    }
    //24-11-2022
    public static list<string> toCap(List<String> lst) {
        List<String> retList = new List<String>();

        for (string item : lst) {
            System.debug(item);
            String caps = item.capitalize(); // her item için baş harfi büyütme metodu
            retList.add(caps);
        }
        return retList;        
    }

    


}
