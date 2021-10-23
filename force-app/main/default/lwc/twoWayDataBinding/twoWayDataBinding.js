import IsReductionOrder from '@salesforce/schema/Order.IsReductionOrder';
import { LightningElement,track } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
  
   @track obj={
        EmployeeName: "Kratika",
        Employeelocation: "Indore"
    }
   
    doChange(event){
       
        this.obj.EmployeeName= event.target.value
    }
    doChange1(event){
       
        
        this.obj.Employeelocation= event.target.value
    }
}