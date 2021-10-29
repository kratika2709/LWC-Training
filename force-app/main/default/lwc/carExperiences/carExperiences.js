import { LightningElement, api, track } from 'lwc';
import getExperiences from '@salesforce/apex/CarExperience.getExperiences';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation';

export default class CarExperiences extends NavigationMixin(LightningElement) {

    PrivateCarId;
    @track carExperiences=[];



    connectedCallback(){
        this.getCarExperiences();
    }

    @api
    get carId(){
        return this.PrivateCarId;
    }

    set carId(value){
        this.PrivateCarId= value;
        this.getCarExperiences();
    }

    getCarExperiences(){
        getExperiences({carId : this.PrivateCarId}).then( (experiences) =>{
            this.carExperiences = experiences;
        }).catch((error) =>{
            this.showToast('ERROR', error.body.message, 'error');
        })
    }

    userClickHandler(event){
        const userId = event.target.getAttribute('data-userid');
        this[NavigationMixin.Navigate]({
            type: "standard__recordPage",
            attributes: {
              recordId: userId,
              objectApiName: "User",
              actionName: "view",
            }
          });
    }
    
    showToast(title, message, variant) {
        const evt = new ShowToastEvent({
            title: title,
            message: message,
            variant: variant,
        });
        this.dispatchEvent(evt);
    }

    get hasExperiences(){
        if(this.carExperiences.length >0){
            return true;
        }
        return false;
    }
    
}