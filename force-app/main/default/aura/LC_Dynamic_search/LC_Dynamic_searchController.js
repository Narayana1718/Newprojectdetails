({

handleSearch : function(component, event, helper) {

component.set("v.isDisplay",true);

var action=component.get("c.displayAccounts");

action.setParams({

searchkey:component.get("v.accName")

});

action.setCallback(this,function(response){

var state=response.getState();

var responval=response.getReturnValue();

if(state==='SUCCESS')

{

component.set("v.acclist",responval);

}

else

{

alert('Error in processing the data');

}

});

$A.enqueueAction(action);

}

})