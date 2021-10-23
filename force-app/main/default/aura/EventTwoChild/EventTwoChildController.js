({
	doInit : function(component, event, helper) {
		var evt = component.getEvent("SecondEvent");
        var one=component.get("v.Sname");
        var two=component.get("v.Splace");
        evt.setParams({
            "Student" : one , 
            "Place" : two
         
        });
        evt.fire();
        
	}
})