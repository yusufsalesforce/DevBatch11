trigger AccountTrigger on Account (before insert, before update) {
    
    System.debug('account before insert trigger called.');
    System.debug('account before UPDATE trigger called.');
    
    
    /*
    System.debug('account before insert trigger called.');
    System.debug('account after insert trigger called.');
    // burada consola 4 adet debug gider 2 before için 2 taneside after için
    */
    /*
    if (Trigger.isBefore) {
        System.debug('before insert trigger.');
    }
    if (Trigger.isAfter) {
        System.debug('after insert trigger.');
    }
    */
}