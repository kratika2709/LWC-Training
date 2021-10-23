public class CreateContactEqualLocation {
     public static void CreateCon(map<Id,Account> updatedAccounts)
     {
         set<Id> accIds = updatedAccounts.keySet();
         list<contact> conlst = new list<contact>();
         for(ID accId:accIds){
             Account acc = updatedAccounts.get(accId); 
             for(integer i = 1; i<= acc.No_Of_Location__c;i++)
             {
                
                 contact con = new contact(lastname='locationContact'+i,accountid=acc.id);
                     
               conlst.add(con);
             }
             insert conlst;
         }
     }
}