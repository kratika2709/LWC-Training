import { LightningElement ,track} from 'lwc';

export default class C2pChild extends LightningElement {
   @track firstno;
   @track secondno;
    
    
    
    changeHandler1(event){
        
        this.firstno = event.target.value
        console.log(this.firstno)
    }
    changeHandler2(event){
        
        this.secondno = event.target.value
        console.log(this.secondno)
    }
    sumhandler(){
        var result;
        this.result=Number(this.firstno) + Number(this.secondno)
        console.log(this.result)

      const  myEvent = new Customevent('first',{
            detail:this.result 
        });
        this.dispatchEvent(myEvent)
        
    }

    }