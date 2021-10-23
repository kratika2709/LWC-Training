public class AccountIndustryList {
    
    @auraenabled
    public static Map<String,String> getIndustryList()
    {
        Map<String,String> industryList = new Map<String,String>();
        SObjectType accountType = schema.getGlobalDescribe().get('Account');
        Map<String,Schema.SObjectField> mFields = accountType.getDescribe().fields.getMap();
        List<Schema.PicklistEntry> Industry_Picklist_Values = mFields.get('industry').getDescribe() .getPickListValues();
        for(Schema.PicklistEntry a : Industry_Picklist_Values )
        {
            industryList.put(a.getLabel(), a.getValue()); 
        }
         System.debug(industryList); 
        return industryList;
    }
     @auraenabled
    public static void createAccount(String name,String industry)
    {
        Account acc = new Account ();
        acc.Name = name;
        acc.Industry = industry;
        insert acc;
        system.debug('name : '+name+' & industry :'+industry);
    }
}