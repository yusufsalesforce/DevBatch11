trigger ContactTrigger on Contact (before update, after update) {
    if (Trigger.isBefore) {
        System.debug('contact before update trigger called');
    }
    if (Trigger.isAfter) {
        System.debug('contact after update trigger called');
    }
}