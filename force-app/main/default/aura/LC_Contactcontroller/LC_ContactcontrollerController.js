({

doInit :function(component, event, helper)

{

var action=component.get("c.condata");

action.setCallback(this,function(response){

var responseval=response.getReturnValue();

var state=response.getState();

console.log('state is'+state);

if(state==='SUCCESS')

{

component.set("v.conlist",responseval);

}

else

{

console.log('unable to process the data');

}

});

$A.enqueueAction(action);

}

})