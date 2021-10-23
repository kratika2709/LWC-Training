public class RetriveAccountRecord {
    public static void RetriveAccountRecordMethod(string ph){
        list<string> s1 = new list<string>();
        list <account> acc =[select id, name from account where phone=:ph];
        
        system.debug(acc);
    }
}