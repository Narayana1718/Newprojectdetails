trigger automatic on account(after insert){
 list<contact> c=new list<contact>();
 for(account a:trigger.new)
 {
   contact b=new contact();
   b.lastname=a.name;
   c.add(b);
 }
  insert c;
}