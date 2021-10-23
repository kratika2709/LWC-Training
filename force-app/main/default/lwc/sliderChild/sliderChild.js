import { LightningElement,api } from 'lwc';

export default class SliderChild extends LightningElement {
    vol = 20
    changeHandler(event){
        this.vol = event.target.value
    }
    @api resteMethod(){
        this.vol=70
    }
}