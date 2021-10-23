({
	Callme : function(component, event, helper) {
        alert("2");
		var show = event.getParam("message");
        component.set("v.ShowMsg",show);
	}
})