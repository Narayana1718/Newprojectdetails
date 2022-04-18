({
    createRow: function(component, listOfAccounts) {
        let accountObject = {};
        if(listOfAccounts.length > 0) {
            accountObject.index = listOfAccounts[listOfAccounts.length - 1].index + 1;
        } else {
            accountObject.index = 1;
        }
        accountObject.Name = null;
        accountObject.Website = null;
        accountObject.Phone = null;
        listOfAccounts.push(accountObject);
        component.set("v.listOfAccounts", listOfAccounts);
    }
});