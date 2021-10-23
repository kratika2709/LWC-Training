public class EventAppUsecaseClass {
        public static void EventAppUsecaseClassMethod(string searchText)
        {
            searchText += '%';
            account[] lstacc = [select id,name from account where name like:searchText];
            
        //   list<contact> conlst = [select id,FirstName,LastName from contact where Accountid= lstacc[0].id];
             
        }
}