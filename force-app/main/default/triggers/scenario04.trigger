trigger scenario04 on lead(after insert){
 list<account> acc=new list<account>();
 list<contact> con=new list<contact>();
 list<opportunity> op=new list<opportunity>();
 
 for(lead l:trigger.new)
 {
  account a=new account();
  a.name=l.lastname;
  a.phone=l.phone;
  acc.add(a);

  contact c=new contact();
  c.lastname=l.name;
  con.add(c);

  opportunity o=new opportunity();
  o.name=l.lastname;
  o.amount=l.annualrevenue;
  o.closedate=system.today();
  o.stagename='closed won';
  op.add(o);
 } 
  insert acc;
  insert con;
  insert op;
}