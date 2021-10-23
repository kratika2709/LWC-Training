({
	doSave : function(component, event, helper) {
		var action = component.get('c.createContact');
       
        action.setParams({
            AccountId:component.get('v.Accountid'),
            con:component.get('v.CreateContact')
            
        });
        action.setCallback(this,function(response){
            var state= response.getState();
            alert(state);
            if(state === 'SUCCESS'|| state === 'DRAFT'){
            var responseval= response.getReturnValue();
            }else if(state === 'INCOMPLETE'){
                
            }else if(state === 'ERROR'){
                
            }  
        });
        $A.enqueueAction(action,false);
	}
})