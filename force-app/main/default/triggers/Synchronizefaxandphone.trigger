trigger Synchronizefaxandphone on Account (before update) {
    if(trigger.isbefore && trigger.isupdate)
    {
        list<Contact> contoupdate = new list<contact>();
        {
        list<Account> lstacc= [select id,name,phone,fax,(select id,firstname,lastname,phone,fax from contacts)from account];
            if(!lstacc.isempty())
            {
               for(account acc : lstacc)
               {
                   for(contact con : acc.contacts)
                   {
                      acc.phone= con.phone;
                        acc.fax=con.fax;
                       contoupdate.add(con);
                   }
               }
                 if(!contoupdate.isempty())
                 {
                     update contoupdate;
                 }
            }
           
    }

}
}