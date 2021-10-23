({
	click : function(component, event, helper) {
		alert(component.getName());
        component.set('v.Secondnumber',"34");
        alert(component.get('v.Secondnumber'));
        component.set('v.Secondnumber',"55");
        var myage= component.find("age");
        alert(myage.get('v.value'));
	}
})