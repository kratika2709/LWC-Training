public class CreateAuraContact {
    @auraEnabled
    public static void InsertContact(contact xyz)
    {
        //Account acc = new account([select id,name,type from account]);
        insert xyz;
        
        
    }
}