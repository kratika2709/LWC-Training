public class FetchAccountRecord {
    @auraEnabled
    public static list<account> FetchAccountDetailsMethod ()
    {
        list<account> acclst= [select id, name, rating , type, phone from account];
        return acclst;
    }
}