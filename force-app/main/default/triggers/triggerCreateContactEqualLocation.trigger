trigger triggerCreateContactEqualLocation on Account (after update) {
    if(trigger.isafter && trigger.isupdate){
        CreateContactEqualLocation.CreateCon(trigger.newMap);
    }
}