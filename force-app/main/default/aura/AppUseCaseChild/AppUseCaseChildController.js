({
    click : function(component, event, helper) {
        
        var action= component.get('c.accList');
        var abc = component.get("v.acc");
        action.setParams({"accName":abc});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state == 'SUCCESS')
            {
                var result = response.getReturnValue();
                 var appEvent = $A.get("e.c:AppEventUseCase");
                appEvent.setParams({"accId":result});
                appEvent.fire();
                
            }
        });
        $A.enqueueAction(action);
    }
})