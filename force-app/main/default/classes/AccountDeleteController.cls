public class AccountDeleteController {

@AuraEnabled

public static List<Account> displayAccounts()

{

List<Account> acclist=[select Id,Name from Account];

return acclist;

}

@AuraEnabled

public static List<Account> deleteAccRecord(String accId)

{

System.debug('AccountId'+accId);

Account acc=[select Id,Name from Account where Id=:accId];

delete acc;

return displayAccounts();

}

}