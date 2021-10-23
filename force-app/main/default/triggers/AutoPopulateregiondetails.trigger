trigger AutoPopulateregiondetails on Customer__c (before insert,before update) {
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        for(Customer__c cust: Trigger.new)
        {
            if(cust.Region_Name__c != null && cust.Region_Name__c != '')
            {
                /*if(cust.Region_Name__c == 'Asia')
                    cust.Region_manager__c = 'Vishu';
                else if(cust.Region_Name__c == 'Europe')
                    cust.Region_manager__c ='Kratika';
                else if(cust.Region_Name__c == 'China')
                    cust.Region_manager__c = 'Chang';
                else if(cust.Region_Name__c == 'japan')
                    cust.Region_manager__c = 'Ritika';*/
                cust.Region_manager__c = RegionDtails__c.getvalues(cust.Region_Name__c).Region_manager__c;
            }
        }

}
}