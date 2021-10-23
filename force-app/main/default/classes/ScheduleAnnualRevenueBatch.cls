global class ScheduleAnnualRevenueBatch implements system.Schedulable 
 {
    global void execute(system.SchedulableContext scontext)
    {
       //create the object of batch class....
       BatchApexStateManagmeent revenueBatch = new BatchApexStateManagmeent();
        
        //invoke the batch...
        Database.Executebatch(revenueBatch);
    }
 }