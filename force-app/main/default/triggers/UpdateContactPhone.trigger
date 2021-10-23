Trigger  UpdateContactPhone on Contact(before insert){
    
        list<account> accList= [select id, name,phone from account ];
        //list<contact> conlst =[select id,firstname,lastname,otherphone,accountid from contact where id =:accList.id];
        for(account acc : acclist )
            
        {
            
            for (contact con : trigger.new)
            {
                
                if(con.accountid==acc.id)
                {
                    system.debug('acc.id'+acc.id);
                    con.otherphone=acc.phone;
                }
            }
        
    }
    
    
    /* Set<id> accIds = new Set<id>();
for(Contact c:trigger.new){
accIds.add(c.AccountId);
}

Map<id,account> accmap = new Map<id,account>();
List<Account> acclst = [select id,phone from Account where id IN:accIds];
for(account acc:acclst)
{
// accmap.put(acclst.id,acclst);
}

for(Contact con:trigger.new)
{    
if(con.accountId != null)
{
con.otherphone =accmap.get(con.accountId).phone;
}
}*/
}