public class ListCollection11 {

    // parametre olarak string bir liste alan bir metot yazin. Bu metot listenin her bir elemanini tek tek yazdirsin.

    public static void printListEachItem(List<String> adList) {
        
        // for ile yapabilirim..
        integer counter =1;
        for (string eachItem : adList) {
            System.debug('for '+ counter + ' defa döndü');
            System.debug(eachItem);
            counter++;
        }


    }
    // decimal bir listeyi parametre olarak alan ve bu listenin elemanlarının toplamını return eden bir metod yazın.

    public static decimal listEachItemSum(List<Decimal> decList ) {
        Decimal toplam;
        // gelen liste dolu boş kontrolü yapılır. Dolu ise işlem yapılır boş ise işlem yapılmaz.

        // size() ile
        if (decList.size()>0) {
            toplam = 0;
            for (decimal item : decList) {
                toplam += item;
                // veya toplam = toplam + item;
            }
        }

        // isEmpty() ile
        /* if (!decList.isEmpty()) {
            toplam = 0;

            for (decimal item : decList) {
                toplam += item;
                veya toplam = toplam + item;
            }

        } */
        return toplam;
    }

    public static decimal listItemsAverage(List<Decimal> avList) {
        Decimal average;
        
        if (!avList.isEmpty()) {
            Decimal toplam = listEachItemSum(avlist);
            integer elemanSayisi = avList.size();
            average = toplam/ elemanSayisi;
        }
        
        return average; 
    }
}