({
	ClickHere : function(component, event, helper) {
		
        var evt = $A.get("e.c:ApplicationEvent");
        evt.setParams({"message" : "Welcome To infoFeat"});
        alert("12");
        evt.fire();
        
	}
})