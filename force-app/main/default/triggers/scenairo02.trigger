trigger scenairo02 on account(before insert,before update,before delete){
user u=[select id,name from user where username='ynreddy7070@gmail.com'];
if(u.id==userinfo.getuserid())
{
 if(trigger.isdelete)
 {
 for(account a:trigger.old)
 {
  a.adderror('Cant delete record');

}
}

if(trigger.isupdate)
{
for(account b:trigger.new)
 {
  b.adderror('Cant Not Update');
 }
}

if(trigger.isinsert)
{
 for(account c:trigger.new)
 {
 c.adderror('Cant Not Insert');
  }
 }
}
}