import { LightningElement } from 'lwc';

export default class QuerySelector extends LightningElement {

    TeamMembers = ["Kratika","Rizwan" , "Vishu","Ritika","Anant"];
    doClick(event){
        let data = this.template.querySelector('h1')
        console.log('query selector', data.innerText)
        let Teamdata;
        Teamdata = this.template.querySelectorAll('.TeamAll');
        Array.from(Teamdata).forEach(item=>{
            console.log(item.innerText)
            item.setAttribute('title',item.innerText)
            item.style.color =`red`
        })
    }
}