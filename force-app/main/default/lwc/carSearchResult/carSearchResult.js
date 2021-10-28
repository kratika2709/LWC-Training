import { LightningElement ,api,wire} from 'lwc';
import getCars from '@salesforce/apex/CarSearchResultController.getCars';

export default class CarSearchResult extends LightningElement {

    @api carTypeId;
}