public class AssetHandler {
    public static void assetHandlerUpdate (List<Asset> newList, List<Asset> oldList, Map<Id,Asset> newMap, Map<Id,Asset> oldMap) {
        
        for (Asset item : newList) {
            if (item.status=='Shipped') {
                item.description = 'Asset is shipped';
            }
        }
    }

    public static void assetHandlerUpdate1(List<Asset> newList, List<Asset> oldList, Map<Id,Asset> newMap, Map<Id,Asset> oldMap) {

        for (Asset item : newList) {
            if (item.status == 'Installed') {
                item.description = 'Asset is Installed';
            }
        }
    }

    public static void assetHandlerUpdate2(List<Asset> newList, List<Asset> oldList, Map<Id,Asset> newMap, Map<Id,Asset> oldMap) {

        for (Asset item : newList) {
            if (item.status != oldMap.get(item.id).status) {
                item.status = oldMap.get(item.id).status;
            }
        }
    }
}
