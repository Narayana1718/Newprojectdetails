public class AccountController {
@AuraEnabled
    public static List<Account> getAccounts(){
        return [SELECT
               Id, Name, Phone, Rating, Industry
               FROM Account];
    }

    @AuraEnabled
    public static boolean updateAccounts(List<Account> editedAccountList){
        try{
            update editedAccountList;
            return true;
        } catch(Exception e){
            return false;
        }
    }
}