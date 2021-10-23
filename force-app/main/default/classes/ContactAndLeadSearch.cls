public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(string LastName){
        List<List<sObject>> searchList = [FIND 'smith' IN ALL FIELDS RETURNING Lead(LastName),Contact(LastName)];
        return searchList;
        
        
    }

}