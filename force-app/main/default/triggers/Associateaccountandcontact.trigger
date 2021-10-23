trigger Associateaccountandcontact on Contact (before insert) {
    if(trigger.isbefore && trigger.isinsert)
    {
        for (contact con : trigger.new)
        {
           if (con.accountid== null || con.accountid=='')
           {
               con.accountid.AddError('contact record should be associated with an account');
           }
        }
    }

}