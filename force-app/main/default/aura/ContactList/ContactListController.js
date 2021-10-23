({
	docreateConlist : function(component, event, helper) {
        /*Step1*/
        var action= component.get('c.contactlist');
    
        /*Step2/* optional*/
        action.setParams({
            accid : component.get('v.recordId') 
        });
        
        /*Step4*/
        action.setCallback(this, function(response){
            //var state = response.getState();
            var responsevalue= response.getReturnValue();
           
            console.log('responsevalue',responsevalue);
            
            component.set('v.ContList',responsevalue);
            });
       
        /*Step3*/
        $A.enqueueAction(action, false);
          
		
	},
    doRedirect : function(component, event, helper) {
           var callevent= event.getSource();
           var id = callevent.get('v.name');
            //alert(id);
            var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
              "recordId":id,
              
            });
            navEvt.fire();
    
},
})