trigger OpportunityTeamTrigger on Opportunity (after insert) { 
    if(trigger.isafter && trigger.isinsert){
    list<opportunityteammember> opptm = new list<opportunityteammember>();
        for(opportunity opp : trigger.new)
        {
              if(opp.Amount> 50000)
              {
               opportunityteammember optm= new opportunityteammember(OpportunityId=opp.Id, UserId='0052w000006wnZWAAY');
                  opptm.add(optm);
                  insert opptm;
              }
          }
    }}