public class Contactlistcontroller{
    @AuraEnabled
    public static list<contact> contactlist( string accid){
        list<contact> conlst = new list<contact>([select id,firstname,lastname,email,phone from contact where AccountId=: accid]);
        return conlst;
       }
    @AuraEnabled
    public static contact createContact(contact con, Id AccountId)
    {
        con.AccountId = AccountId;
        insert con;
        return con;
    }
   
}