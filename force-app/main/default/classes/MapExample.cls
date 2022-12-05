public class MapExample {
    //engin
    public static Map<Integer, Integer> mapA(integer m) {

        Map<integer, integer> mapA = new Map<Integer,Integer>();

        for (integer i=1; i<=m; i++) {
            
            mapA.put(i, i*i);
        }
        for (integer x : mapA.keySet()) {
            System.debug(x+ ' => ' +mapA.get(x) );
        }

        return mapA;
    }
}