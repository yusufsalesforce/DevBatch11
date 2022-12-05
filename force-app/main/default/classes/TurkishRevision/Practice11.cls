public class Practice11 {
    //static bir ogrenci11 bos liste olusturalim. 
    //bir metot yazalim bu metot 3 tane ogrenci11 classina ait obje(instance) uretsin ve bunu static listeye eklesin..
    public static List<ogrenci11> ogrenciList = new List<ogrenci11>();
    //^^ listeyi tanıttık...

    public static void ogrenciler() {
        ogrenci11 s1 = new ogrenci11('Ali', 'Fire', 95);
        ogrenciList.add(s1);

        ogrenci11 s2 = new ogrenci11('Veli', 'Fire', 85);
        ogrenciList.add(s2);

        ogrenci11 s3 = new ogrenci11('Davut', 'Fire', 100);
        ogrenciList.add(s3);
    }
}