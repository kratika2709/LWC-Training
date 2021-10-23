import { LightningElement } from 'lwc';

export default class StyleLWC extends LightningElement {
    percent = 1
    buttonClicked;
    styledynamic='dynamic';
    onchange(event){
        this.percent = event.target.value

    }
    get percentage(){
        return `width:${this.percent}%`
    }
    onclickHandler(event){
        this.buttonClicked = !this.buttonClicked;
        this.styledynamic = !this.buttonClicked ? 'dynamic' : 'dynamiscecond';
    }
}