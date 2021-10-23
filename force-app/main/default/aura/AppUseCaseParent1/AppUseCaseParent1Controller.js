({
	searchRelatedContacts : function(component, event, helper) {
		var action = component.get("c.conList");
        var xyz =event.getParam("accId");
        action.setParams({"accId":xyz});
     
        action.setCallback(this,function(response){
            if(response.getState() == 'SUCCESS')
            {
                console.log("SUCCESS");
                 console.log(response.getReturnValue());
                var res = response.getReturnValue();
            component.set("v.contactList",res);
            }
        });
        $A.enqueueAction(action);
	}
  
})