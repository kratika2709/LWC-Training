trigger MapExample on OpportunityLineItem (after insert) {
    Map<Id,List<OpportunityLineItem>> oppLineMap = new Map<Id,List<OpportunityLineItem>>();
    Map<Id,List<Opportunity>> oppAccMap = new Map<Id,List<Opportunity>>();
    for(OpportunityLineItem opp : Trigger.New){
        if (!oppLineMap.containsKey(opp.opportunityId)){
            oppLineMap.put(opp.opportunityId, new List<OpportunityLineItem>());
        }
        oppLineMap.get(opp.opportunityId).add(opp);
    }
    List<Opportunity> oppList = [SELECT Id,AccountId FROM Opportunity WHERE Id IN:oppLineMap.keySet()];
    for(Opportunity opp : oppList){
        if (!oppAccMap.containsKey(opp.accountId)){
            oppAccMap.put(opp.accountId, new List<Opportunity>());
        }
        oppAccMap.get(opp.accountId).add(opp);
    }
    List<Account> accList = [SELECT Id, Total_of_Opportunity_Line_Item__c FROM account WHERE Id IN:oppAccMap.keySet()];
    for (Account acc :accList){
        Decimal Sum = 0;
        List<Opportunity> oppList = oppAccMap.get(acc.id);
        for(Opportunity opp :oppList){
            List<OpportunityLineItem> oppLine = oppLineMap.get(opp.id);
            for(OpportunityLineItem oppL :oppLine){
                Sum += oppL.Quantity;
            }
        }
        acc.Total_of_Opportunity_Line_Item__c = Sum;
    }
    if (!accList.isEmpty()){
        update accList;
    }

}