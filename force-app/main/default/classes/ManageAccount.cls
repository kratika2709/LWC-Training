public class ManageAccount {
   @AuraEnabled
    public static list<account> getaccount( )
   {
       
       list<account> acclst = new list<account>();
       acclst = [select id,name from account where type ='Technology Partner'];
           
       return acclst;
   }
}