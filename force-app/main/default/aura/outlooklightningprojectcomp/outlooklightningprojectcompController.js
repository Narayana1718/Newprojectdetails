({
	getinfo : function(component) {
        var vFirstName = component.find("FirstName").get("v.value");
		var vLastName = component.find("LastName").get("v.value");
        var outputNameElement = component.find("NameToDisplay");
        outputNameElement.set("v.value", 'Outlook Name :: ' + vLastName+ ', ' + vFirstName);		
	}
})