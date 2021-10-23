public class EventClass {
     public static list<account> EventClassMethod()
     {
         list<account> lstacc = [select id,name from account where Name ='Exatip'];
         return lstacc;
     }
}