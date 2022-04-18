@istest
// Called as annotation, converts normal APEX class to test class
//(2 Benefits)

class BookDiscountClassTest {

  @isTest
  static void MyTestFunction1(){
      Note_Book__c  VarP = new Note_Book__c();
	  VarP.Book_Customer_Name__c='Narayana Reddy';
	  VarP.Price__c=200;
	  
	  insert VarP;
	  
	  Note_Book__c VarP2 = new Note_Book__c();
	  VarP2 = [ SELECT Price__c from Note_Book__c WHERE id =: VarP.id];
	  
	  System.assertEquals(180, VarP2.Price__c);
	  
	}
    
  @isTest
  static void MyTestFunction2(){
      Note_Book__c  VarP = new Note_Book__c();
	  VarP.Book_Customer_Name__c='Narayana Reddy';
	  VarP.Price__c=79;
	  
	  insert VarP;
	  
	  Note_Book__c VarP2 = new Note_Book__c();
	  VarP2 = [ SELECT Price__c from Note_Book__c WHERE id =: VarP.id];
	  
	  System.assertEquals(69, VarP2.Price__c);
	  
	}
    
  @isTest
  static void MyTestFunction3(){
      Note_Book__c  VarP = new Note_Book__c();
	  VarP.Book_Customer_Name__c='Narayana Reddy';
	  VarP.Price__c=60;
	  
	  insert VarP;
	  
	  Note_Book__c VarP2 = new Note_Book__c();
	  VarP2 = [ SELECT Price__c from Note_Book__c WHERE id =: VarP.id];
	  
	  System.assertEquals(55, VarP2.Price__c);
	  
	}
    
  @isTest
  static void MyTestFunction4(){
      Note_Book__c  VarP = new Note_Book__c();
	  VarP.Book_Customer_Name__c='Narayana Reddy';
	  VarP.Price__c=20;
	  
	  insert VarP;
	  
	  Note_Book__c VarP2 = new Note_Book__c();
	  VarP2 = [ SELECT Price__c from Note_Book__c WHERE id =: VarP.id];
	  
	  System.assertEquals(19, VarP2.Price__c);
	  
	}
    
     @isTest
  static void MyTestFunction5(){
      Note_Book__c  VarP = new Note_Book__c();
	  VarP.Book_Customer_Name__c='Narayana Reddy';
	  VarP.Price__c=300;
	  
	  insert VarP;
	  
      // code for doing delete
      delete VarP;
	  
	}
    
}