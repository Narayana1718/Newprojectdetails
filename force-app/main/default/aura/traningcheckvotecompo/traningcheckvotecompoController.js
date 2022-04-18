({
	geteligibility : function(component) {
        var vage = 	component.find("Age").get("v.value");
     	
        if(vage >= 18)
        component.set("v.eligibleornot",true);
        else	
        component.set("v.eligibleornot",false);		
	}
})