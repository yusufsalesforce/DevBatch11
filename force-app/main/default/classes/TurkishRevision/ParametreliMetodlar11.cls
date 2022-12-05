public class ParametreliMetodlar11 {
    
    // bu method paremetre olarak string bir değer alsın.
    // Bu string karakter sayısını return etsin.
    public integer uzunluk(String text){
        Integer uzn = text.length();
        return uzn;
    }

    // bu method parametre olarak integer bir değer alsın
    // ve bu integer değeri kaç rakamdan oluştuğunu return etsin

    public integer rakamSayisi (Integer sayi){
        String str = string.valueOf(sayi);
        
        integer rakamSay = str.length();
        return rakamSay;
        
    }

    // 2 integer sayının toplamını return etsin. 
    public integer sum(Integer a, Integer b){
        return a+ b ;

    }

    // 2 integer sayının farkını return etsin
    public integer subt(Integer c,Integer d){
        return c-d;
    }

    // kitap fiyatı 
    public void muhasebe(String kitapAdi, Integer adet, Decimal fiyat){
        Decimal toplamFiyat = adet*fiyat;
        System.debug(kitapAdi + ' kitabından ' + adet + ' adet aldınız ' + ' ödemeniz gereken tutar => ' + toplamFiyat );
    }


}
