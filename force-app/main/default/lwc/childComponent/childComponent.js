import { LightningElement,api } from 'lwc';

export default class ChildComponent extends LightningElement {
    @api name;
    @api address;
    @api year;
    @api Example;
    @api companydata;
    @api changebarValue;

    
}