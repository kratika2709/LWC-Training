public class FetchAccountDetails {
    @auraEnabled
    public static list<account> FetchAccountDetailsMethod (string accid)
    {
        list<account> acclst= [select id, name, rating , type, phone from account];
        return acclst;
    }
     @auraEnabled
    public static List<Account> findByName(String searchKey) {
        String name =  searchKey + '%';
        return [SELECT id, name, phone,type,rating FROM Account WHERE name LIKE :name];
}
}