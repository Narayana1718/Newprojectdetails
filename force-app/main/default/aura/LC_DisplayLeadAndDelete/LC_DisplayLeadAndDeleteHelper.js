({
//To perform delete action.
    deltingCheckboxAccounts : function(component, event, deltIds) {
    //Calling apex method.
        var action = component.get('c.DeleteRecord');
        //passing the all selected record's Id's to apex method.
        action.setParams({
            "DeleteIds": deltIds
        });
       //Getting response.
        action.setCallback(this, function(response) {
            var state = response.getState();
            //If state is sucess then refreshing the View.
            if (state === "SUCCESS") {
                console.log('Inside delete'+state);
                //Refresh the View.
                $A.get('e.force:refreshView').fire();
            }
        });
         
        $A.enqueueAction(action);
    }
})