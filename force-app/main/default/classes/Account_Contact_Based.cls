public class Account_Contact_Based {
@AuraEnabled

public static List<Account> displayAccounts()

{

List<Account> acclist=[select Id,Name,Site from Account LIMIT 10];

return acclist;

}

@AuraEnabled

public static List<Contact> displayContacts(String searchkey)

{

System.debug('Value of the AccountId'+searchkey);

List<Contact> conlist=[select Id,AccountId,LastName,Email from Contact where

AccountId=:searchkey];

return conlist;

}
}