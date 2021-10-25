import { LightningElement } from 'lwc';

export default class LifeCycle extends LightningElement {

    constructor(){
        super();
        console.log('constructor calling')

    }
    connectedCallback(){
        console.log('connected callback calling')
    }
    renderedCallback(){
        console.log('rendered Callback calling')
    }
    disconnectedCallback(){
        console.log('dissconnected callback calling')
    }
}