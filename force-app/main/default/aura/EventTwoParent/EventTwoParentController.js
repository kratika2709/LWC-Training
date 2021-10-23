({
	Callme : function(component, event, helper) {
		var name = event.getParam("Student");
        var City = event.getParam("Place");
        component.set('v.PStudent',name);
         component.set('v.PPlace',City);
	}
})