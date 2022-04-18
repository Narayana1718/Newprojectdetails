trigger myaccount on account (after insert, before update) {
list<contact> conlist=new list<contact>();
list<opportunity> opplist=new list<opportunity>();


for(account acc:trigger.new){
contact con=new contact();
con.accountid=acc.id;
con.phone=acc.phone;
con.lastname=acc.name;
conlist.add(con);

opportunity opp=new opportunity();
opp.name=acc.name;
opp.accountid=acc.id;
opp.closedate=date.today()+14;
opp.stagename='prospecting';
opplist.add(opp);



}
insert conlist;
insert opplist;

}