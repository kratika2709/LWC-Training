import { LightningElement,wire } from 'lwc';
import getAccountBySearch from '@salesforce/apex/AccountList.getAccountBySearch';
export default class SearchAccountList extends LightningElement {
    
    accountName='';
     accList
    @wire (getAccountBySearch,{accName:`$accountName`})
    retriveAccount({data,error}){
        if(data){
            this.accList=data
        }
        else if(error)
        {
            console.error(error)
        }
    }
    changeHandler(event){
        this.accountName= event.target.value;
    }
    
}