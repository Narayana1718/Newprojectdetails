trigger CountContactsnew on Contact (after insert, after delete, after undelete) {

    List<id> accIdList = new List<id>();
    if(Trigger.isInsert || Trigger.isUndelete){
        For(Contact con1 : Trigger.new){
            accIdList.add(con1.accountid);
        }
    }
    if(Trigger.isDelete){
        For(Contact con1 : Trigger.old){
            accIdList.add(con1.accountid);
        }
    }
    List<Account> accUpdateList = new List<Account>();
    For(Account acc : [SELECT id,Count__c,(SELECT id FROM Contacts) FROM Account WHERE id =: accIdList]){
        acc.Count__c = acc.Contacts.size();
        accUpdateList.add(acc);
    }
    try{
        update accUpdateList;
    }Catch(Exception e){
        System.debug('Exception :'+e.getMessage());
    }
}