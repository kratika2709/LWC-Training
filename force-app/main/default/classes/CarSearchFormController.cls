public with sharing class CarSearchFormController {
    @AuraEnabled(cacheable=true)
    public static list<car_Type__c>  getCarTypes(){
        
        return [select id,name from car_Type__c];
    }
    }
    