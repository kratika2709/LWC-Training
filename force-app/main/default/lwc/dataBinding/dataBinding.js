import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
     DATA = "Hello Everyone"
    doChange(event){
    this.DATA = event.target.value
}
}