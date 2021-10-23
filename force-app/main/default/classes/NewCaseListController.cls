public class NewCaseListController {
    public List<case> getNewCases(){
        List<Case> results =  [SELECT id,CaseNumber FROM Case WHERE status='New'];
        return results;
        }

}