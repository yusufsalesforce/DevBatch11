trigger AssetTrigger on Asset (before insert, before update) {

    if (trigger.isBefore && trigger.isInsert) {
        AssetHandler.assetHandlerUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        AssetHandler.assetHandlerUpdate1(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        AssetHandler.assetHandlerUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        AssetHandler.assetHandlerUpdate1(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        AssetHandler.assetHandlerUpdate2(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }
}