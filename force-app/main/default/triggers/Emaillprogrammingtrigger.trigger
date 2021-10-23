trigger Emaillprogrammingtrigger on Customer__c (after insert, after update) {
    if (trigger.isafter && trigger.isinsert)
    {
        for(customer__c cstrec : Trigger.new)
        {
            EmailProgramming.messageutility(cstrec,'Welcome To Infofeat');
        }
    }
    
    if (trigger.isafter && trigger.isupdate)
    {
        for (customer__c cstrec : Trigger.new)
        {
            if(trigger.oldmap.get(cstrec.id).Region_Name__c != trigger.newmap.get(cstrec.id).Region_Name__c)
            {
                EmailProgramming.messageutility(cstrec,'Welcome To Infofeat again'); 
            }
        }
    }
    if (!trigger.new.isempty())
    {
        EmailProgramming.messageutility(Trigger.new,'Welcome To Infofeat again'); 
    }
        
}