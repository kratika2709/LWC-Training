({
	doInit : function(component, event, helper) {
	var	action=component.get('c.getaccount');
        action.setParams({
            
        });
        
        action.setCallback(this,function(response){
            var state = response.getState();
            console.log('>>>>> state'+ state );
             
            if (state === "SUCCESS") {
            	console.log('======');
           
                var options = [];
                var allData = response.getReturnValue();
                console.log('resp',allData);
			    for(var x in allData){
			    	options.push({ value: allData[x].Name, label: allData[x].Name});
			    }
                
			    console.log('options : ',options);
			    component.set('v.SelectOptions', options);
                
	}
             
        });
        
        $A.enqueueAction(action,false);
    
	},
        handleClick: function (cmp, event) {
   
        var selectedOptionValue = cmp.get("v.AccountSelectValue");
        alert("Selected Partner Account is: '" + selectedOptionValue + "'");
    }
});