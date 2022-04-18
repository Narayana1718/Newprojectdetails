({
	getinfo : function(component) {
        var fullName = component.find("EnteredName").get("v.value");
        var outputNameElement = component.find("NameToDisplay");
        outputNameElement.set("v.value", fullName);		
	}
})