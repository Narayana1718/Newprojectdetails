trigger reached on account (before insert, after update){
 integer count=0;
 list <account> a=[select id,name from account where createddate=today or lastmodifieddate=today];
 for(account ac:trigger.new)
 {
   count=a.size();
if(count>2)
  {
   ac.adderror('Reached Limit Today'); 
  }
 }
}