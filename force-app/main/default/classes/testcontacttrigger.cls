public class testcontacttrigger {
    public static void UpdateOtherPhone(List<Contact> clist){
        list<account> accList= [select id, name,phone from account ];
        //list<contact> conlst =[select id,firstname,lastname,otherphone,accountid from contact where id =:accList.id];
        
        for (Contact con : clist)    
        {
            
            for(account acc : acclist )
            {
              
                System.debug('CONTACT CON ID : '+con.AccountId);
                System.debug('Account Acc ID : '+acc.Id);
                if(con.accountid==acc.id)
                {
                    System.debug('CONTACT Account id'+con.AccountId);
                 System.debug('Account phone'+acc.phone);
                    con.otherphone=acc.phone;
                }
            }
        }
    }
}