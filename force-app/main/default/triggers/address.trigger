trigger address on contact (before insert,before update){
if(trigger.isinsert){
for(contact s:trigger.new){
if(s.New_Address__c ==null){
s.New_Address__c = 'India';
   }
 }
}

If(trigger.isupdate){
for(contact s:trigger.new){
if(s.New_Address__c ==null){
s.New_Address__c = 'Hyderabad';
     }
    }
   }
  }