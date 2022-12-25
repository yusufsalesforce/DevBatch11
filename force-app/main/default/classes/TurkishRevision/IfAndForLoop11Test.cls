@isTest
public class IfAndForLoop11Test {
    @isTest
    private static void ifNumbersTest() {
        IfAndForLoop11.ifNumbers(9,7);
        IfAndForLoop11.ifNumbers(5,7);
        IfAndForLoop11.ifNumbers(7,7);
    }

    @isTest
    private static void ifBreadTest() {
        IfAndForLoop11.ifBread('simit', 3);
        IfAndForLoop11.ifBread('ekmek', 5);
        IfAndForLoop11.ifBread('kek', 13);
        IfAndForLoop11.ifBread('adana', 3);
    }

    @isTest
    private static void forLoopSumNumbersTest() {
        Integer tplm =  IfAndForLoop11.forLoopSumNumbers(5);
        System.assertEquals(15, tplm);

        Integer tplm2 =  IfAndForLoop11.forLoopSumNumbers(- 5);
        System.assertEquals(null, tplm2);
    }
}
