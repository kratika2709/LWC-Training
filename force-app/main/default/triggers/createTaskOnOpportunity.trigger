trigger createTaskOnOpportunity on Opportunity (after insert) {
        list<Task> oppTasks = new List<Task>();
        if(trigger.isafter && trigger.isinsert){
        for(opportunity opp : trigger.new)
        {
            oppTasks.add(new Task(Subject='green', WhatId=opp.Id,OwnerId=opp.OwnerId));
            oppTasks.add(new Task(Subject='blue', WhatId=opp.Id,OwnerId=opp.OwnerId));
            oppTasks.add(new Task(Subject='red', WhatId=opp.Id,OwnerId=opp.OwnerId));
            insert oppTasks;
        }
    }
}