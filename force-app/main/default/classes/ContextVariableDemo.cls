public class ContextVariableDemo{

   Public static void functionA(){
   //code to send sms
   //call this code only when record is about to get inserted
   system.debug('FunctionA got called');
   }

    Public static void functionB(){
   //code to fetch data from databse
   //call this code only when record is about to get updated
   system.debug('FunctionB got called');
   }
   
    Public static void functionC(){
   //code for calculation of some complex discount
   //call this code only when record is already inserted
   system.debug('FunctionC got called');
   }

   Public static void functionD(){
   //code for integration with sap
   //call this code only when record is already updated
   system.debug('FunctionD got called');
   }
}