import { LightningElement,track ,wire} from 'lwc';
import getCarTypes from '@salesforce/apex/CarSearchFormController.getCarTypes';

export default class CarSearchForm extends LightningElement {
    @track carTypes;

    @wire(getCarTypes)
    wiredCarType({data,error}){
        if(data){
            this.carTypes=[{value:'',label:'All Types'}];
            data.forEach(element => {
                const carType={};
                carType.label = element.name;
                carType.value = element.id;
                this.carTypes.push(carType);
            });
        }
    }
    handleCarTypeChange(event){

    }
    createNewCarType(){

    }
}