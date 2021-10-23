public with sharing class accountRecordToFetch {
   @auraEnabled(cacheable=true)
    public static list<account> accountRecordToFetchMethod(){
     return [select id, name from account];
        
    }
    
    
    @auraEnabled(cacheable=true)
    public static list<opportunity> OppRecordToFetchMethod(string accountid){
     return [select id, name from opportunity where accountid =:accountid];
        
    }
    
     
}