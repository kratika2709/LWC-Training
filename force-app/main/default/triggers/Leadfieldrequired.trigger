trigger Leadfieldrequired on Lead (before insert,before update) {
    if(trigger.isbefore && trigger.isinsert)
    {
        for(lead ld : trigger.new)
        {
            if(ld.industry== null || ld.industry== '')
            {
                ld.addError('please provide the industry name');
            }
            else if(ld.ProductInterest__c== null || ld.ProductInterest__c == '')
            {
                ld.addError('please provide the product interest name');
            }
        }
    }

}