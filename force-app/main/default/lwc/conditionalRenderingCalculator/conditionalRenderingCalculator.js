import { LightningElement ,track} from 'lwc';

export default class ConditionalRenderingCalculator extends LightningElement {
   @track First
   @track second
   @track result
   @track priviousresult=[];
   @track showPreviousResult= false;
   
   doSum(){
       this.result=Number(this.First)+Number(this.second)
       this.priviousresult.push(this.result);
   }
   doSub(){
    this.result=Number(this.First)-Number(this.second)
    this.priviousresult.push(this.result)
   }
   doDiv(){ 
    this.result=Number(this.First)/Number(this.second)
    this.priviousresult.push(this.result)
   }
   doMul(){
    this.result=Number(this.First)*Number(this.second)
    this.priviousresult.push(this.result)
   }
   doclr(){
     this.first=null
     this.second=null 
    this.result=null
   }

   handleNum1(event){
    this.First= event.target.value
   }
   handleNum2(event){
    this.second= event.target.value
   }
   showPreviousResultToggle(event){
     this.showPreviousResult=event.target.checked;
   }
}