public class BookclassDemonstration{
public static void applyDiscountBook (list<Note_Book__c> VarBookListNew){

  for ( Note_Book__c p : VarBookListNew) {
  
  if(p.Price__c >= 100){
     p.Price__c = p.Price__c-20;
  }
  else if(p.Price__c >= 70 && p.Price__c < 100){
     p.Price__c = p.Price__c-10;
  }
   else if(p.Price__c >= 50 && p.Price__c < 70){
     p.Price__c = p.Price__c-5;
  }
   else if(p.Price__c >= 10 && p.Price__c < 50){
     p.Price__c = p.Price__c-1;
  }
  }
 } 
}