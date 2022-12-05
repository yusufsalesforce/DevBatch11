//class
public class PrimitiveDataTypeDemo {
    

    //method
    public void printBasicDataType(){
        system.debug('print data types');
        string batchName = 'Batch 11';
        integer totalCandidates = 80;
        boolean isAdminComleted = true;

        system.debug('batch name is ' + batchName);
        system.debug('total candidates are ' + totalCandidates);
        system.debug('is admin comleted? ' + isAdminComleted);

        String batchDescription = batchName + ' is the best';
        system.debug(batchDescription);

        Decimal decValu = 65421654;
        system.debug('decimal value is ' + decValu);

        Long l = 1645654546L;
        system.debug('long value is ' + l);
    }

    public void printBasicDataType2(){
        Object ob1 = 'assigning string to object. allowed?';
        Object ob2 = 5000;
        Object ob3 = false;
        system.debug(ob1);
        system.debug(ob2);
        system.debug(ob3);

        ID accountId = '0018d00000KTxuMAAT';
        system.debug('id => ' + accountId);

    }
}