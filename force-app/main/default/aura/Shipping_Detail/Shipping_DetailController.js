({
	doinit : function(component, event, helper) {
       component.get('v.city');
       component.set('v.city', "Khandwa");
       component.get('v.state');
       component.set('v.state',"MP");
       component.set('v.PinCode',450001);
       //var xyz= component.get('v.PinCode');
        //alert(xyz); 
	},
    doClick : function(component, event, helper){
        alert("Welcome to Khandwa.")
    }
})