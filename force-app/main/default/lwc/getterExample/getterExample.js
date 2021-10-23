import { LightningElement ,track} from 'lwc';

export default class GetterExample extends LightningElement {
    users=['Ram','Laxman','Bharat','shatrughn'] 
    isVisible = false;
    get doShow(){
        return this.users[1]
     }
     doClick(event)
     {
    this.isVisible=true
    
 }
    
}