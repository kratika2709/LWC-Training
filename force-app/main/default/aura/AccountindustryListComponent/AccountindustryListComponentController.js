({
    init : function(component, event, helper) {
        
        var action = component.get('c.getIndustryList');
        action.setCallback(this,function(response){
            var state = response.getState(); // get the response state
            console.log(state);
            if(state == 'SUCCESS') {
                var responsevalue = response.getReturnValue();
                
                console.log(responsevalue);
                var jsMap = [];
                for (var key in responsevalue)
                {
                    jsMap.push({
                        key:key,
                        value:responsevalue[key]
                    })   ;
                }
                component.set('v.options', jsMap);
                component.set('v.selectedValue',responsevalue[key]);
            }
        });
        $A.enqueueAction(action);
    },
    doCreateNewAccount : function(component, event, helper) {   
        
        var name = component.find('accountName').get('v.value');
        var industry = component.find('industryId').get('v.value');
        alert(industry);
    var action = component.get('c.createAccount');
        action.setParams({
            name : name,
            industry : industry
            
        });
    
    action.setCallback(this,function(response)
    {
      var states = response.getState();
        
         console.log(states);
        if(states == 'SUCCESS' )
        {
            component.find('accountName').set('Kratika');
        }
	});
	$A.enqueueAction(action);
}

})