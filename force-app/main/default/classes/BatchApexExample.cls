global class BatchApexExample implements Database.Batchable<sobject> {
    
    global Database.QueryLocator start(Database.BatchableContext bContext)
    {
        string contactstofetch = 'select id, Department,phone from contact';
        return Database.getQueryLocator(contactstofetch);
    }
    global void Execute(Database.BatchableContext bContext,List<sobject> Rectoprocess)
    {
        List<contact> lstofcon = new List<contact>();
        if (!Rectoprocess.isEmpty())
        {
            for(sobject contoupdate : Rectoprocess)
            {
                contact con = (contact) contoupdate;
                con.department = 'communication';
                con.phone = '65798798';                
                lstofcon.add(con);
                            
            }
            if (!lstofcon.isEmpty())
            {
                update lstofcon;
            }
        }
    }
    global void Finish(Database.BatchableContext bContext)
    {
        system.debug('jobId'+ bContext.getJobId());
        AsyncApexjob jobdetails =[select id,status,JobItemsProcessed,TotalJobItems,NumberOfErrors,Createdby.email from AsyncApexjob where id =: bContext.getJobId()];
        MessageutilityBatch.SendBatchProcessingNotificationEmail(jobdetails);
    }

}