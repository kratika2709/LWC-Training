public class CasesRelatedToSubject {
    Static List<List<sObject>> relatedCases = new List<List<sObject>>();
    @auraEnabled
	public static List<sObject> searchCases(id openedCaseId)
    {
        Case c = [select subject from case where Id =: openedCaseId];
        system.debug('Case Subject'+c.subject);
		String [] words = (c.Subject).split(' ');
        for(String word : words)
         {
            if(word != 'is' && word != 'a' && word != 'the' )
            {
                List<List<sObject>> cases = new List<List<sObject>>();
                  cases = [find :word returning Case(id,CaseNumber,subject where Status = 'new')];
                relatedCases.add(cases[0]);
            }
        }
         
      
      system.debug('relatedCases'+relatedCases);
      List<sObject> cases = new List<sObject>();
        for(List<sObject> caser : relatedCases)
        {
          for(sObject cs : caser)
          {
              if(cs.id != openedCaseId )
              cases.add(cs);
          }
        }
        system.debug('Case reated to subject'+cases);
        return cases;
    }
    
}