({

doInit : function(component, event, helper) {

var action=component.get("c.displayAccounts");

action.setCallback(this,function(response){

var state=response.getState();

var responsval=response.getReturnValue();

if(state==='SUCCESS')

{

component.set("v.acclist",responsval);

}

else

{

alert('unable to process the data');

}

});

$A.enqueueAction(action);

},

handleDelete:function(component,event,helper){

var currentRecordId=event.getSource().get("v.value");

//alert(currentRecordId);

var action=component.get("c.deleteAccRecord");

action.setParams({

accId:currentRecordId

});

action.setCallback(this,function(response){

component.set("v.acclist",response.getReturnValue());

});

$A.enqueueAction(action);

}

})