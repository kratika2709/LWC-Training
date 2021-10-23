trigger CaseTeamTrigger on Case (before insert) {
    
    if(trigger.isbefore && trigger.isinsert)
    {
        list<caseteammember> cslst = new list<caseteammember>();
        for(case cs : trigger.new)
        {
            
            if(cs.origin == 'Email')
            {
             
                CaseTeamMember cstm = new CaseTeamMember();
                cstm.MemberId='0052w000006wnZWAAY';
            }
        }
    }

}