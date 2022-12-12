trigger LeadTrigger on Lead (before insert,before update) {

    List<Lead> leadList = Trigger.new;
    
    if (Trigger.isBefore && Trigger.isInsert) {
        for (Lead item : leadList) {
            System.debug('Lead record INSERT => ' + item);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        for (Lead item : leadList) {
            System.debug(' Lead record UPDATE => İD : ' + item.id + ' Lead Name : ' + item.lastname + ' Lead description : ' + item.description);
        }
    }

    
}