import { LightningElement,track } from 'lwc';

export default class C2pParent extends LightningElement {
    @track  work;
    myCustomEvent(event){
      
        this.work = event.detail
        
    }
}