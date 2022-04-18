({

doInit : function(component, event, helper) {

var action=component.get("c.displayAccounts");

action.setCallback(this,function(response){

var state=response.getState();

var responseval=response.getReturnValue();

if(state==='SUCCESS')

{

component.set("v.acclist",responseval);

}

else

{

alert('unable to process the request');

}

});

$A.enqueueAction(action);

},

showData:function(component,event,helper){

var currentAccountId=event.getSource().get("v.value");

component.set("v.isDisplay",true);

var action=component.get("c.displayContacts");

action.setParams({

searchkey:currentAccountId

});

action.setCallback(this,function(response){

var state=response.getState();

var responseval=response.getReturnValue();

if(state==='SUCCESS')

{

component.set("v.conlist",responseval);

}

else

{

alert('unable to process the request');

}

});

$A.enqueueAction(action);

}

})