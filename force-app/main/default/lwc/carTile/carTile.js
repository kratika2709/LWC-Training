import { LightningElement,api } from 'lwc';

export default class CarTile extends LightningElement {
    @api  car;
    @api carSelectedId;

    handleCarSelect(event){
        event.preventDefault();
        
        const carId = this.car.id;
        
        const carSelect= new CustomEvent('carselect',{detail:carId});
        this.dispatchEvent(carSelect);
    }
    get isCarSelected(){
      this.selectedCarId = carId;
        if(this.carId=== this.selectedCarId){
            return "tile selected";
        } 
        return "tile";
    }
}