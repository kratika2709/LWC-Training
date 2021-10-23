public with sharing class RizwanComponentApex {
    @auraEnabled(cacheable=true)
    public static void insertAudit(Audit__c xyz){
        insert xyz;
    }
}