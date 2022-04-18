trigger BookDiscountTrigger on Note_Book__c (Before insert, Before update){
   if (Trigger.isBefore == True && Trigger.isInsert == True){
   BookClassDemonstration.applyDiscountBook(Trigger.new);
   }
   
   if (Trigger.isBefore == True && Trigger.isUpdate == True){
   BookClassDemonstration.applyDiscountBook(Trigger.new);
   }
    
   if (Trigger.isBefore == True && Trigger.isDelete == True){
    //BookClassDemonstration.applyDiscountBook(Trigger.new);
   }
}