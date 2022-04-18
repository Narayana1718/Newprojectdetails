public class AccountListController1 {
	@AuraEnabled
    public static List < Account > fetchAccts() {
        return [ SELECT Id, Name, Industry, Type FROM Account LIMIT 30];
    }
}