global class BatchApexStateManagmeent implements Database.batchable<sobject>,Database.stateful {
    global decimal totalannualrevenue = 0.0;
    global Database.querylocator start(database.BatchableContext bcontext)
    {
       string Accountrec = 'select id,name,annualrevenue from account where annualrevenue != null'; 
        return database.getQueryLocator(Accountrec);
    }
    global void Execute(database.BatchableContext bcontext,List<sobject> rec)
    {
        if(!rec.isEmpty())
        {
            for(sobject arec: rec)
            {
                account acc = (account) arec;
                totalannualrevenue += acc.AnnualRevenue;
            }
        }
    }
    global void finish(database.BatchableContext bcontext)
    {
        system.debug('jobId'+ bContext.getJobId());
        AsyncApexjob jobdetails =[select id,status,JobItemsProcessed,TotalJobItems,NumberOfErrors, Createdby.email  from AsyncApexjob where id =: bContext.getJobId()];
        MessageutilityBatch.SendBatchProcessingNotificationEmailStateMana(jobdetails,totalannualrevenue,'BatchApexStateManagmeent');
    }
}