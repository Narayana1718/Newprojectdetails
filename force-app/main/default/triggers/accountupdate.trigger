trigger accountupdate on account(after update){
set <id> getaccountid = new set<id>();
for(account a:trigger.new)
{
 getaccountid.add(a.id);
}

list<contact> c=[select id,accountid from contact where accountid in:getaccountid];
list<contact> updatecontact=new list<contact>();
for(account a:trigger.new)
{
 for(contact c1:c)
 {
 c1.mailingstreet=a.billingstreet;
updatecontact.add(c1);
  }
 }
update updatecontact;
}