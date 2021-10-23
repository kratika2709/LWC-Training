import { LightningElement } from 'lwc';

export default class ParentCalculator extends LightningElement {
      result;
      FirstNo
      SeondNo

      handleNum1(event){
        this.FirstNo= event.target.value
       }
       handleNum2(event){
        this.SeondNo= event.target.value
       }

     sumHandler(event){
      this.result = Number(this.FirstNo) + Number(this.SeondNo)  
    }
    subHandler(event){
        this.result = Number(this.FirstNo) - Number(this.SeondNo)  
      }
  
      mulHandler(event){
        this.result = Number(this.FirstNo) * Number(this.SeondNo)  
      }
      divHandler(event){
        this.result = Number(this.FirstNo) / Number(this.SeondNo)  
      }
      
  
}