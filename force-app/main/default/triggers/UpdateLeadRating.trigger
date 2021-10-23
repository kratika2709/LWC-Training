trigger UpdateLeadRating on Lead (before insert) {
     if(trigger.isbefore && trigger.isinsert)
     {
         for (lead ld : trigger.new)
         {
             if(ld.LeadSource=='Web')
             {
                 ld.Rating='cold';
                 
             }else{
                         ld.Rating='Hot';
                     }
                 }
             }
         }