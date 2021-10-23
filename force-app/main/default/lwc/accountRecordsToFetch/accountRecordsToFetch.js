import { LightningElement,track,wire } from 'lwc';
import accountRecordToFetchMethod from '@salesforce/apex/accountRecordToFetch.accountRecordToFetchMethod';
import OppRecordToFetchMethod from '@salesforce/apex/accountRecordToFetch.OppRecordToFetchMethod';
 columns;
 columns = [{
            label: 'Name',
            fieldName: 'Name'
        }];
export default class AccountRecordsToFetch extends LightningElement {
@track isModalOpen = true
closeModal() {
this.isModalOpen = false
} 
columns;
    @track accountid = '';
    @track opportunities;
    @track columns = columns; 
  
    //  invoke apex method with wire property and fetch picklist options.
    // pass 'object insformation' and 'picklist field API name' method params which we need to fetch from apex
    @wire(accountRecordToFetchMethod) accounts;
    onValueSelection(event) {
        // eslint-disable-next-line no-alert
        const selectedAccount = event.target.value;
        this.accountId = event.target.value;
        if (selectedAccount != null) {
           OppRecordToFetchMethod({
                  accountid: selectedAccount
                })
                .then(result => {
                    this.opportunities = result;
                    // eslint-disable-next-line no-console
                    console.log('result' + JSON.stringify(result) + selectedAccount);
                })
                .catch(error => {
                    this.error = error;
                });
        }
    }
}