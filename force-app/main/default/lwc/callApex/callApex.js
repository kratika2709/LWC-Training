import { LightningElement,wire } from 'lwc';
import getAccount from '@salesforce/apex/AccountList.getAccount'

export default class CallApex extends LightningElement {
    acclist
    @wire (getAccount)
        accounts
    @wire (getAccount)
    accountHandler({data,error}){
        if(data){
            this.acclist= data.map(item=>{
                let newRating  = item.Rating === 'Hot'? 'H':
                item.Rating === 'Cold' ? 'C':'.........'
                return{...item,newRating}
            })
        }
    if(error){
        console.error(error)
    }
    }


}