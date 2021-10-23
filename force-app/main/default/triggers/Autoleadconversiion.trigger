trigger Autoleadconversiion on Lead (After update) {
    if(trigger.isafter && trigger.isupdate)
    {
       /* leadstatus ldstatus = [select id,masterlabel,IsConverted from leadstatus where IsConverted= true];
        list<database.LeadConvert> leadstoconvert= new list<database.LeadConvert>();
        
        for(lead ld : trigger.new)
        {
            if(ld.IsConverted == false && ld.status== 'Closed - Converted')
            {
                database.LeadConvert leads= new database.LeadConvert();
                leads.setleadID(ld.id);
                leads.setconvertedstatus(ldstatus.masterlabel);
                leads.SetDonotcreateopportunity(ld.Do_not_create_oppourtunity__c);
                
                leadstoconvert.add(leads);
            
            
            }
                                                  
        }
        if (!leadstoconvert.isempty())
            {
               Database.LeadConvertresult []Results= Database.ConvertLead(leadstoconvert);
            }*/
        LeadHandler.Afterupdate(trigger.new);
                     
    }
        
    

}