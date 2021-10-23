({
	searchRelatedOpportunities : function(component, event, helper) {
        alert("oppp");
		var action = component.get("c.oppList");
        var klm =event.getParam("accId");
        action.setParams({"accId":klm});
        
        action.setCallback(this,function(response){
            if(response.getState() == 'SUCCESS')
            {
             var res1 = response.getReturnValue();
                console.log(res1);
               
             component.set("v.oppList",res1);
            }
        });
        $A.enqueueAction(action);
	}
  
})