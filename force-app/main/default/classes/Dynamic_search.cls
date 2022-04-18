public class Dynamic_search {

@AuraEnabled

public static List<Account> displayAccounts(String searchkey)

{

String searchword='%'+searchkey+'%';

System.debug('userinput'+searchword);

List<Account> returnlist=new List<Account>();

for(Account acc:[select Id,Name,Site from Account where Name like:searchword])

{

returnlist.add(acc);

}

return returnlist;

}

}