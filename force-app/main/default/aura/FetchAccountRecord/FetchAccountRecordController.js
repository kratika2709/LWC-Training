({
	doInit : function(component, event, helper) {
		var action = component.get('c.FetchAccountDetailsMethod');
        
        action.setCallback(this,function(response){
           var state =response.getState();            
            if(state === 'SUCCESS')
               {
                   var result = response.getReturnValue();
                   console.log(result);
                   var abc =component.set('v.accounts', result);
                   console.log(abc);
               }else{
                   
                   console.log("Failed to fetch records.");
               }
                           });
        $A.enqueueAction(action);
	},
    searchKeyChange: function(component, event) {
        var searchKey = component.find("searchKey").get("v.value");
        var action = component.get('c.findByName');
        action.setParams({
            "searchKey": searchKey
        });
        action.setCallback(this, function(a) {
            component.set("v.accounts", a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    
})