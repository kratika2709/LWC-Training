public with sharing class CarSearchResultController {
    
    @AuraEnabled(cacheable=true)
    public static list<Car__c> getCars(string carTypeId){

    if(string.isEmpty(carTypeId)){
        return [select id,name , picture__c , Contact__r.Name ,
        Geolocation__latitude___s, Geolacation__longitude__s
        from car__c
        where Available_for_rent__c = true];

    } else {
        
        return [select id,name , picture__c , Contact__r.Name ,
        Geolocation__latitude___s, Geolacation__longitude__s
        from car__c
        where Available_for_rent__c = true
        and Car_Type__c =:carTypeId];
        }
    }
}
