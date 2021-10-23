public with sharing class AccountList {
    @auraEnabled(cacheable=true)
    public static list<account> getAccount(){
        return [select id,name,rating,type from account where rating !='' limit 7];
    }
    
    @auraEnabled(cacheable=true)
    public static list<account> getAccountByParams(string PickRate){
        return [select id,name,rating,type from account where rating=:PickRate  limit 20];
    }
    @auraEnabled(cacheable=true)
    public static list<account> getAccountBySearch(string accName){
           string search = '%'+accName+'%';
        system.debug( [select id,name,rating,type from account where name like:search]);
        return [select id,name,rating,type from account where name like:search];
        
    }
    
}