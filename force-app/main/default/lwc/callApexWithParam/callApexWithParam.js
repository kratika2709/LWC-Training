import { LightningElement , wire} from 'lwc';
import getAccountByParams from '@salesforce/apex/AccountList.getAccountByParams'

export default class CallApexWithParam extends LightningElement {
    selectRating =''
    @wire (getAccountByParams,{rating:`$selectRating`})
    typeOfRating
    get typeofRatings(){
        return [
            {label:"Hot",value:"Hot"},
            {label:"Cold",value:"Cold"}
        ]
    }
    ratingHandler(event){
        this.selectRating=event.target.value
    }
}