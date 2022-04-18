public class contactcontroller {
@AuraEnabled

public static list<contact> condata()

{

list<contact> col=[select id,LastName,Email,Phone from contact ];

return col;

}
}