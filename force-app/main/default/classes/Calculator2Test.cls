@isTest
public class Calculator2Test {
    @isTest
    private static void testMessage() {
        Calculator2.welcomeMessage();
        Calculator2.printNewMessage('This is from test method');
    }
    @isTest
    public static void addTest1() {
        Integer a = 10;
        Integer b = 15;
        Integer sum1 = Calculator2.add(a,b);
        System.assertEquals(25, sum1);
    }
    
    @isTest
    private static void addTest2() {
        Integer sum1 = Calculator2.add(10,15,20);
        System.assertEquals(45, sum1);
    }
    
    
}


//* Run All Test veya commom palette / run apex test / ve class ismini seçip test ediyoruz.