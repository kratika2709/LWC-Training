({
	doinit : function(component, event, helper) {
        component.set('v.amount',8000.24);
		var a=parseFloat(component.get('v.amount'));
         
        alert(parseFloat(a));
        component.set('v.rate',2.3);
       var b=  parseFloat(component.get('v.rate'));
        component.set('v.time',2);
        
        var c =parseFloat(component.get('v.time'));
        
        var result = ((a*b*c)/100);
        component.set('v.Total',parseFloat(result));
	}
})