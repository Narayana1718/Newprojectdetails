({
    doInit: function(component, event, helper) {
        let listOfAccounts = [];
        helper.createRow(component, listOfAccounts);
    },

    /**
     * Adds a new row
     */
    addNewRow: function(component, event, helper) {
        let listOfAccounts = component.get("v.listOfAccounts");
        helper.createRow(component, listOfAccounts);
    },

    /**
     * Removes the selected row
     */
    removeRow: function(component, event, helper) {
        let toBeDeletedRowIndex = event.getSource().get("v.name");
        let listOfAccounts = component.get("v.listOfAccounts");

        let newListOfAccounts = [];
        for (let i = 0; i < listOfAccounts.length; i++) {
            let tempRecord = Object.assign({}, listOfAccounts[i]); //cloning object
            if (tempRecord.index !== toBeDeletedRowIndex) {
                newListOfAccounts.push(tempRecord);
            }
        }

        for (let i = 0; i < newListOfAccounts.length; i++) {
            newListOfAccounts[i].index = i + 1;
        }

        component.set("v.listOfAccounts", newListOfAccounts);
    },

    /**
     * Removes all rows
     */
    removeAllRows: function(component, event, helper) {
        let listOfAccounts = [];
        helper.createRow(component, listOfAccounts);
    },

    createAccounts: function(component, event, helper) {
        let action = component.get("c.insertAccounts");
        action.setParams({
            "jsonOfListOfAccounts": JSON.stringify(component.get("v.listOfAccounts"))
        });
        action.setCallback(this, function(response) {
            let listOfAccounts = [];
            helper.createRow(component, listOfAccounts);
            const toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
                message: "Accounts successfully created!",
                type: "success",
                duration: '2000',
            });
            toastEvent.fire();
        });
        $A.enqueueAction(action);
    }
});