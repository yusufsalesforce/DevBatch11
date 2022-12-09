public class Loops_assingment {
    public void forLoops(Integer n) {
        
        for(Integer i=1; i<n; i++){
            System.debug(i);
        }//birer artırma yöntemi
    }

    public void printEven(){

        for(Integer i = 1; i< 100; i++){
            Integer x = Math.mod(i, 2);

            if (x == 0){
                System.debug(i);
            }

        }
    }




    // 23 den başlayan ve 108 de biten, 5 er sayan method yazınız. 
    public void denemeMethot(integer n){
        for(integer i=23; i<n; i++){
            Integer kalan = Math.mod(i, 5);
            if (kalan==0) {
                System.debug(i);
            }
        }
    }

    public void deneme2(integer y){
        for(integer i=23; i<y; i++){
            Integer abc = Math.mod(i, 4);
            if( abc  == 0 ){
                System.debug(i);
            }
        }
    }
}