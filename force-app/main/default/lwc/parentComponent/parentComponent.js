import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
    CompanyNames=["Techlene","ExaTip","infoFeat"]
    barValue=10;
    doChange(event){
        this.barValue =event.target.value
    }

   
}