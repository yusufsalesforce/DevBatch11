public class Calculator3 {
    public static Integer add(List<Integer> listInt) {
        integer returnInt = 0;

        for (integer eachInt : listInt) {
            System.debug('eachInt ' + eachInt);
            returnInt+=eachInt;
            System.debug('returnInt ' + returnInt);

        }
        return returnInt;


    }

}
