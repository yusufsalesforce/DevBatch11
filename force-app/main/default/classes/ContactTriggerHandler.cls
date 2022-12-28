public class ContactTriggerHandler {

    public static void numberOfcontacts(List<Contact> newList) {
        Set<id> accIds = new Set<id>();
        for (contact item : newList) {
            accIds.add(item.Accountid);
        }
        ContactTriggerHandler.numberOfcontactsFuture(accIds);
    }
    @future
    public static void numberOfcontactsFuture(set<id> acId) {
        List<Account> accList = [select id,name, Number_Of_Contacts__c, (select id,lastname from contacts) from Account where id in : acId];
        for (account acc : accList) {
            acc.Number_Of_Contacts__c = acc.contacts.size();
        }
        update accList;
    }





    
    //^^ Yeni bir Contact mevcut bir Accounta bağlı olarak oluşturulduğunda Contact other phone bağlı olduğu Account phone olsun.
    //* version 1
    /*
    public static void otherPhone(List<contact> newList,List<contact> oldList, Map<Id,contact> newMap, Map<Id,contact> oldMap){
        //insert edilen tum contactlardan accounta bagli olanlari secelim..
        set<id> conIds = new set<id>();
        for (contact con : newList) {
            if (con.AccountId != null) {
                conIds.add(con.id);
            }
        }
        //Accounta bagli olan tum Contactlari accountun(parent) phone ile beraber SOQL yapiyoruz..
        List<Contact> conList = [select id, otherPhone, account.phone from Contact where id IN :conIds];

        //Bu listeyi bir for each dongusunun icine alip otherPhone guncellemesini yapalim..
        for (Contact cn : conList) {
            cn.OtherPhone = cn.account.phone;
        }
        update conList;
    }
    //* version 2
    public static void otherPhone2(List<Contact> triggerNew, Map<Id, Contact> triggerNewMap) {
        //Account idlerin key oldugu ilgili accountun recordunun da value oldugu bir map olusturup. contactlarin bagli oldugu accountlarin recordlarini burada toplarim..
        Map<Id, Account> AccMap = new Map<Id, Account>();
        
        set<id> accIds = new Set<id>();
        List<Contact> conList = new List<Contact>();
        for (contact con : triggerNew) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
                //accounta bagli contactlari bir listeye koyduk
                conList.add(con);
            }
        }
        //SOQL ile bu accountlarin recordlarini getirelim..
        List<Account> accList = [select id, name, phone from account where id IN :accIds];
    
        //Mapi dolduruyoruz..
        for (account acc : accList) {
            AccMap.put(acc.id, acc);
        }
    
        //Accounta bagli olan create edilmis contaclari for dongusune alip otherPhone guncelliyoruz..
        for (contact con : conList) {
            con.OtherPhone = AccMap.get(con.accountId).phone;
        }
    }
    */


    //^^ tr ödev - soru 21
    /*
    public static void updateDescription(List<contact> newList,
    List<contact> oldList, Map<Id,contact> newMap, Map<Id,contact> oldMap) {
        
        for (contact item : newList) {
            if (item.lastname != oldMap.get(item.id).lastname) {
                item.description = 'LastName değiştirildi [' + oldMap.get(item.id).lastname + '] - [' + item.lastname + ']';
            }
        }
    }
    */


    /*
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
        */


        //^^ validation
        /*
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
        */
    
}
