import { LightningElement,wire ,track} from 'lwc';
import {getRecord} from 'lightning/uiRecordApi';

import Car_id from '@salesforce/schema/car__c.id';
import Car_Name from '@salesforce/schema/car__c.Name';
import Car_Mileage from '@salesforce/schema/car__c.Mileage__c';
import Car_Per_Day_Rent from '@salesforce/schema/car__c.Per_Day_Rent__c';
import Car_Build_Year from '@salesforce/schema/car__c.Build_Year__c';
import Car_Picture from '@salesforce/schema/car__c.Picture__c';
import Car_Contact_Name from '@salesforce/schema/car__c.Contact__r.Name';
import Car_Contact_Email from '@salesforce/schema/car__c.Contact__r.Email';
import Car_Contact_Phone from '@salesforce/schema/car__c.Contact__r.HomePhone';
import Car_CarType_Name from '@salesforce/schema/car__c.car_type__r__r.Name';

const fields= [
    Car_id,
    Car_Name ,
    Car_Mileage,
    Car_Per_Day_Rent,
    Car_Build_Year,
    Car_Picture,
    Car_Contact_Name,
    Car_Contact_Phone,
    Car_CarType_Name
] 
export default class CarDetails extends LightningElement {
    carId;
    @track selectedTabValue;

    @wire(getRecord,{recordId :'$carId',fields})
    car;

    tabSelectHandler(event){
       this.selectedTabValue=event.target.value;
    }
}