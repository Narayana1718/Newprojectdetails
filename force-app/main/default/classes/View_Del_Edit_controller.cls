public class View_Del_Edit_controller {
@AuraEnabled
    public static List<Account> getAccountData(){
       return [SELECT Id,Name,AccountNumber,Industry,Phone FROM Account];
    }
    
    @AuraEnabled
    public static void delAccount(Account accountRec){
        delete accountRec;
    } 
 }