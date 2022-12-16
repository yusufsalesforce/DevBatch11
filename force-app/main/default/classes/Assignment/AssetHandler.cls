public class AssetHandler {
    public static void assetHandlerUpdate (List<Asset> newList, List<Asset> oldList, Map<Id,Asset> newMap, Map<Id,Asset> oldMap) {
        
        for (Asset item : newList) {
            if (item.id == null) {
                
                if (item.status=='Shipped') {
                    item.description = 'Asset is shipped';
                }
                
                if (item.status == 'Installed') {
                    item.description = 'Asset is Installed';
                }
            }else {
                if (item.status == 'Shipped' && oldMap.get(item.id).status != 'Shipped') {
                    item.description = 'Asset is shipped';
                }
                
                if (item.status == 'Installed' && oldMap.get(item.id).status != 'Installed') {
                    item.description = 'Asset is Installed';
                }
            }
        }
        
    }


}

// •	Create an Apex trigger for Asset object.
// ^^	The trigger should work on before insert and before update
// •	On both the cases it should call a handler class by passing trigger.new, trigger.old,trigger.newmap,trigger.oldmap.
// •	Create an apex Assethandler class
// •	Create a static method Assethandlerupdate which returns nothing and accepts 
// LIST<ASSET>, LIST<ASSET>,MAP<ID,ASSET>,MAP<ID,ASSET>
// •	If status of the field while inserting or updating is equal to Shipped then the Description should be ‘Asset is shipped’
// •	If status of the field while inserting or updating  is equal to Installed then the Description should be ‘Asset is Installed’
// •	By any chance if we try to just update without modifying the status field it should not change the description.

