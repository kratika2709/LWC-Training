import { LightningElement } from 'lwc';

export default class QuizComponent extends LightningElement {
    value = '';
    

    get options() {
        return [
            { label: 'Narendra Modi', value: 'option1' },
            { label: 'Arvind Kejriwal', value: 'option2' },
            { label: 'Soniya Gandhi', value: 'option3' },
        ];
    }
    value1='';
    get options1() {
        return [
            { label: 'India', value1: 'option1' },
            { label: 'USA', value1: 'option2' },
            { label: 'UAE', value1: 'option3' },
        ];
    }
}