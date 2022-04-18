trigger RollUpFromChildToParent on Contact (after insert, after update, after delete, after undelete) {
     
    Set<Id> accountIds = new Set<Id>();
 
    if(Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete){
        for(Contact con : Trigger.new){
            if(con.AccountId != null){
                accountIds.add(con.AccountId); 
            }
        }
    }
     
    if(Trigger.isDelete || Trigger.isUpdate){
        for(Contact con : Trigger.old){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
    }
     
    List<Account> accList = new List<Account>();
    for(AggregateResult aRes : [SELECT AccountId, SUM(Amount__c) Total FROM Contact WHERE AccountId IN :accountIds GROUP BY AccountId]) {
        accList.add(new Account(Id = (Id)aRes.get('AccountId'), Total__c = (Decimal)aRes.get('Total')));
    }
     
    try{
        Update accList;
    }catch(DmlException de){
        System.debug(de);
    }
}