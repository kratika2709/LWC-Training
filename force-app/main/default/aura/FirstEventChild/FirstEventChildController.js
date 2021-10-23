({
	doClick : function(component, event, helper) {
		var comEvent = component.getEvent("cmpEvent");
        comEvent.setParams({
            "message" : "Welcome to infoFeat." });
        comEvent.fire();
	}
})