import { LightningElement } from 'lwc';

export default class SliderParent extends LightningElement {
    clickhandler(){
        this.template.querySelector('c-slider-child').resteMethod()
    }
}