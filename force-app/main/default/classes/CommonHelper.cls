public class CommonHelper {
    public void getAccountByRelationQuery(string accountname)
    {
        list<Account> lstacc= [select id,name,rating,type,
                               (select id,name,StageName from opportunities),
                               (select id,firstname,lastname,email from contacts),
                                (select id,casenumber from cases)from Account where name=:accountname];
        system.debug('Account list size'+lstacc.size());
        if(!lstacc.isempty())
            for(Account acc: lstacc)
        {
            system.debug('Oppoutunity list size'+ acc.opportunities.size());
            if (!acc.opportunities.isempty())
            {
                for(Opportunity opp: acc.opportunities)
                {
                    system.debug('Opprtunities recoerds are====='+opp);
                }
            }
            system.debug('Contact list size'+ acc.contacts.size());
            if(!acc.contacts.isempty())
            {
                for(Contact con: acc.contacts)
                {
                    system.debug('contacts records are==='+con);
                }
            }
            system.debug('case list size'+ acc.cases.size());
            if(!acc.cases.isempty())
            {
                for(case Ca: acc.cases)
                {
                 system.debug('cases records are==='+Ca);   
                }
            }
        }
    }
    public void getAccountRecordtypesByAgg()
    {
        
    }
    
    public void geraccountrecordbyaggregateclass(){
        AggregateResult [] Accountagg =[select industry,sum(Annualrevenue) Annrev from Account group by industry];
        system.debug('size of records-----'+Accountagg.size());
        if (!Accountagg.isempty())
        {
            for(AggregateResult acc : Accountagg)
            {
                system.debug('Records Are----'+acc);
            }
        }
        
    }
    
    public void getrecordbydynamicsoql(string status)
    {
        string ldrecord = 'select id , name, company, status from lead where status=:status';
        list<lead> ldstatus= database.query(ldrecord);
        if(!ldstatus.isempty())
            system.debug(ldstatus.size());
            for(lead ld : ldstatus)
            {
                system.debug('lead records is==='+ld);
            }
            
        
    }
    
    public void GetContactRecord(string fname)
    {
       list<contact> lstcon = [select id,firstname,lastname from contact where firstname=: fname];    
  
      if (!lstcon.isempty())
      {
          system.debug('contact list size is--'+ lstcon.size());
          for (contact cl : lstcon)
          {
              system.debug('contact list records--'+cl);
          }
      }
    }
    
    public void GetAccountRecord()
    {
        list<Account> lstacc= [select id, name, rating,type from Account];
        
       if(!lstacc.isEmpty())
           for(Account acc: lstacc)
        {
            system.debug('list of account records'+ acc);
        }
    }
   
    public void mapcollection()
   {
       map<string,string> fruitname= new map<string,string>();
                fruitname.put('Red','Apple');
                fruitname.put('Green','Grapes');
                fruitname.put('Yellow','mango');
                fruitname.put('Brown','coconut');
                system.debug(fruitname);
                map<string,string> copy= new map<string,string>();
                copy.putall(fruitname);
                system.debug('list elements ==='+copy);
                set<string>fkeys=copy.keyset();
                system.debug('list elements ==='+fkeys);
                list<string>fvalue=copy.values();
                system.debug('list elements ==='+fvalue);
   }
}