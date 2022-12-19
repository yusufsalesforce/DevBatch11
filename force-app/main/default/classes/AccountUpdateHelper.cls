public class AccountUpdateHelper {

    @invocableMethod
    public static void accountWebsiteUpdate(List<id> accIds) {
        List<account> listAcc = [select id, website, name from account where id in : accIds];
        for (account eachAcc : listAcc) {
            eachAcc.website = 'www.softinnovas.com';
        }
        update listAcc;
    }
}
