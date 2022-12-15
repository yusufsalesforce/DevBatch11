public with sharing class ContactTriggerHandler {


    public static void contactUpdateValidation2(
        List<contact> conTriggerNew,
        List<contact> conTriggerOld,
        Map<Id,contact> conTriggerNewMap,
        Map<Id,contact> conTriggerOldMap ) {
        
        for (contact item : conTriggerNew) {
            if (item.leadsource != conTriggerOldMap.get(item.id).leadsource) {
                item.addError('Cannot update Lead Source ');
            }
        }
    }


    public static void contactUpdateValidation1(
        List<contact> conTriggerNew,
        List<contact> conTriggerOld,
        Map<Id,contact> conTriggerNewMap,
        Map<Id,contact> conTriggerOldMap ) {
        
        for (contact eachContact : conTriggerNew) {
            
            if (eachContact.leadSource == 'Partner Referral') {
                eachContact.leadSource.addError('Cannot update Partner Refferal contact');
            }
        }
        
        /*
        //^^ validation
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
        */
    }
}
