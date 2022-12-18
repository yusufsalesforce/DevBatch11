trigger OpportunityTrigger on opportunity (before insert, after insert, before update, after update) {
    //soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.
    
    /*
    if (trigger.isBefore && trigger.isUpdate) {
        for (opportunity opp : trigger.new) {
            if (opp.StageName != trigger.oldMap.get(opp.id).StageName) {
                if (opp.StageName == 'Closed Lost') {
                    opp.Description = 'Cok uzgunuz..';
                }
                if (opp.StageName == 'Closed Won') {
                    opp.Description = 'Oleeey Yasasin..';
                }
                if (opp.StageName == 'Prospecting') {
                    opp.StageName.addError('Sureci basa donduremezsiniz.. Dolayisiyla bu islemi yapamazsiniz..');
                }
            }
        }
    }
    */
}