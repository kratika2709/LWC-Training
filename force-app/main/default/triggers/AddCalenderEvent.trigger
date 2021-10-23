trigger AddCalenderEvent on Opportunity ( after update){
    
    String Label1 = 'Shoot Dates';
    String Label2 = 'Post Production Dates';
    
    Map<String,String> calMap = new Map<String,String>();
    for( Calendar cal : [SELECT Type, Id, Name, CreatedDate FROM Calendar where type = 'public'] ){
        calMap.put( cal.Name, cal.Id );
    }
    
    list<event> EventList = new list<event>();
    for(Opportunity oppr : trigger.new){
        
       // if( oppr.StageName == 'Closed Won'&& trigger.oldmap.get(oppr.id).StageName != oppr.StageName ){
            if(oppr.Shoot_date__c != null && trigger.oldmap.get(oppr.id).Shoot_date__c != oppr.Shoot_date__c){
                Event ev = new Event(Subject = oppr.Name,
                                     StartDateTime = oppr.Shoot_date__c,
                                     EndDateTime=oppr.Shoot_date__c,
                                     OwnerId=calMap.containsKey(Label1) ? calMap.get(Label1):null,
                                     whatId = oppr.Id
                                    );
                
                EventList.add(ev);
            }
            if(oppr.Shoot_Date_2__c != null && trigger.oldmap.get(oppr.id).Shoot_Date_2__c != oppr.Shoot_Date_2__c){
                Event ev1 = new Event(Subject = oppr.Name,
                                      StartDateTime = oppr.Shoot_Date_2__c,
                                      EndDateTime=oppr.Shoot_Date_2__c,
                                      OwnerId=calMap.containsKey(Label1) ? calMap.get(Label1):null,
                                      whatId = oppr.Id
                                     );
                
                EventList.add(ev1);
            }
         if(oppr.Post_Production_Date__c != null && trigger.oldmap.get(oppr.id).Post_Production_Date__c != oppr.Post_Production_Date__c){
                Event ev2 = new Event(Subject = oppr.Name,
                                      StartDateTime = oppr.Post_Production_Date__c,
                                      EndDateTime=oppr.Post_Production_Date__c,
                                      OwnerId=calMap.containsKey(Label2) ? calMap.get(Label2):null,
                                      whatId = oppr.Id
                                     );
                
                EventList.add(ev2);
            }
        if(oppr.Post_Production_Date_2__c != null && trigger.oldmap.get(oppr.id).Post_Production_Date_2__c != oppr.Post_Production_Date_2__c){
                Event ev3 = new Event(Subject = oppr.Name,
                                      StartDateTime = oppr.Post_Production_Date_2__c,
                                      EndDateTime=oppr.Post_Production_Date_2__c,
                                      OwnerId=calMap.containsKey(Label2) ? calMap.get(Label2):null,
                                      whatId = oppr.Id
                                     );
                
                EventList.add(ev3);
            }
        }
  //  }
    if (EventList.size()>0){
        insert EventList;
    }
    
}