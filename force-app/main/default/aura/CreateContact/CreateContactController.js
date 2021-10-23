({
	doSave : function(component, event, helper) {
        var abc = component.get("v.con");
        var action = component.get("c.InsertContact");
        
        action.setParams({
            'xyz':abc
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'Success')
            {
                var result = response.getReturnValue();
            }
        });
        
        $A.enqueueAction(action); 
		
	}
})