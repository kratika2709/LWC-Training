import { LightningElement,track,wire } from 'lwc';
import { getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import Audit__c from '@salesforce/schema/Audit__c';
import saveAudit from '@salesforce/apex/RizwanComponentApex.insertAudit';
import insertAudit from '@salesforce/apex/RizwanComponentApex.insertAudit'
export default class RizwanComponent extends LightningElement {
@track isModalOpen = true
closeModal() {
this.isModalOpen = false
} 

date
@track controllingValues=[];
@track dependentValues=[];
@track MonitoringPeriodValues=[];
@track selectedAuditType
@track selectedType
@track selectedMonitoringPeriod
@track isEmpty= false
@track error;
controlValues;
totalDependentValues = [];
@track data;

onChangeDate(event) {
this.date = event.detail.value;
}

@wire(getObjectInfo, { objectApiName: Audit__c })
objectInfo;    

@wire(getPicklistValuesByRecordType, { objectApiName: Audit__c, recordTypeId: '$objectInfo.data.defaultRecordTypeId'})
countryPicklistValues({error, data}) {
    if(data) {
    this.error = null;
    let firstOptions = [{label:'--None--', value:'--None--'}];
    data.picklistFieldValues.Audit_Type__c.values.forEach(key => {
    firstOptions.push({
    label :key.label,
    value:key.value
    })
});

this.controllingValues = firstOptions;
let secondOptions = [{label:'--None--', value:'--None--'}];

this.controlValues = data.picklistFieldValues.Type__c.controllerValues;
this.totalDependentValues = data.picklistFieldValues.Type__c.values;
this.totalDependentValues.forEach(key => {
secondOptions.push({
label : key.label,
value: key.value
})
});

this.dependentValues = secondOptions;
}
else if(error) {
this.error = JSON.stringify(error);
}
}
handleSelectAuditTypeChange(event){
// Selected Meal Preference Value
this.selectedAuditType = event.target.value;
this.isEmpty = false;
let dependValues = [];

if(this.selectedAuditType) {
    // if Selected Meal Preference is none returns nothing
    if(this.selectedAuditType === '--None--') {
        this.isEmpty = true;
        dependValues = [{label:'--None--', value:'--None--'}];
        this.selectedAuditType = null;
        this.selectedType = null;
        return;
    }
    
    // filter the total dependent values based on selected meal preference value 
    this.totalDependentValues.forEach(conValues => {
        if(conValues.validFor[0] === this.controlValues[this.selectedAuditType]) {
        dependValues.push({
        label: conValues.label,
        value: conValues.value
    })
}
})

this.dependentValues = dependValues;
}
}
saveRecord() {
    
    let auditObj = { 'sobjectType': 'Audit__c' };
    auditObj.Audit_Type__c = this.selectedAuditType;
    auditObj.Type__c = this.selectedType;

    const value = true;
    const valueChangeEvent = new CustomEvent("valuechange", {
      detail: { value }
    });
    // Fire the custom event
    this.dispatchEvent(valueChangeEvent);

    saveAudit({newRecord: auditObj})
        .then(result => {
            this.recordId = result;
        })
        .catch(error => {
            this.error = error;
        });
}
}