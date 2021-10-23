public class AppEventUseCase {
    @AuraEnabled
   public static id accList(string accName)
   {
       account acc = new account ();
       acc = [select id,name from account where name like: accName];
       return acc.id;
   } 
   @AuraEnabled
    public static List<contact> conList(id accId)
    {
        List<contact> con = new List<contact>();
        con = [select id,firstname,lastname ,accountid from contact where Accountid=:accId];
        return con;
    }
   @AuraEnabled
    public static List<opportunity> oppList(id accId)
    {
        List<opportunity> opp = new List<opportunity>();
        opp = [select id, name from opportunity where Accountid=:accid];
        return opp;
    }
}