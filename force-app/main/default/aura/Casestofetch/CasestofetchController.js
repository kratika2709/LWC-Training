({
	docreateCaselist : function(component, event, helper) 
    {
        var action = component.get('c.casesbykeyword');
       
        action.setParams
        ({
            
        });
        
        action.setCallback(this,function(response)
          {
         var responsevalue= response.getReturnValue();
         console.log('responsevalue',responsevalue);
         component.set('v.caselist',responsevalue);  
              
         });
		 $A.enqueueAction(action,false);
        
	}
})