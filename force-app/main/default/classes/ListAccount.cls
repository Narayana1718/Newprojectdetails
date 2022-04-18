public class ListAccount {
@AuraEnabled
    public static list<Account> getRecords(){
        string userId = UserInfo.getUserId();
        list<Account> myrecords = [select Id,Name from Account where ownerid = :userId];
        return myrecords;
    }
}