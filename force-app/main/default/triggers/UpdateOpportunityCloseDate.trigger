trigger UpdateOpportunityCloseDate on Opportunity (before update) {
     if(trigger.isbefore && trigger.isupdate)
     {
         for (Opportunity opp : trigger.old)
         {
             if(opp.StageName =='Closed Won')
             {
                 opp.CloseDate=system.Today();
         
                 opp.Type='New Customer';
             }
         }
     }
}