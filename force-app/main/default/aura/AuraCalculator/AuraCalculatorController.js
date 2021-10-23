({
        addition : function(component, event, helper )
        { 
            console.log("the answer is..")
            var num1 = component.get("v.mynum1");
            var num2 = component.get("v.mynum2");
            var result = parseInt(num1)+ parseInt(num2);
            component.set("v.result", result);
            
        },
    
        substraction : function (component, event, helper )
        { 
            var num1 = component.get("v.mynum1");
            var num2 = component.get("v.mynum2");
            var result = parseInt(num1)- parseInt(num2);
            if(num1<num2)
            {
                alert("Number1 should be grater.")
            }
            else
            {
                 component.set("v.result", result); 
            }  
            
        },
     multiplication : function (component, event,helper )
        { 
            var num1 = component.get("v.mynum1");
            var num2 = component.get("v.mynum2");
            var result = parseInt(num1)* parseInt(num2);
            component.set("v.result", result);
            
        },
     division : function (component, event,helper )
        { 
            var num1 = component.get("v.myum1");
            var num2 = component.get("v.mynum2");
            var result = parseInt(num1)/parseInt(num2);
           if(num2==0)
            {
                alert("Number2 should not be zero.")
            }
            else
            {
                 component.set("v.result", result); 
            }  
            
        },
    refresh : function (component, event,helper )
        {  
            var num1 = component.get("v.mynum1");
            var num2 = component.get("v.mynum2");
            component.set("v.myNum1", null);
            component.set("v.myNum2", null);
            component.set("v.result", null);
            
        },
    
    

        
       
	
})