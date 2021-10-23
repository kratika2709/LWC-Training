trigger UpdateLeadOwner on Lead (before insert) {
    if(trigger.isbefore && trigger.isinsert)
    {
        for(lead ld : trigger.new)
        {
            if(ld.LeadSource == 'Web')
            {
                 
                 
					ld.ownerId = '0052w000006wnZWAAY';

            }
        }
    }

}