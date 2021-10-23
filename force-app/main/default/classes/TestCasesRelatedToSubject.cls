@istest
public class TestCasesRelatedToSubject {
    @testsetup
    static  void setup()
    {
        list<case> cslst= new list<case>();
        for(integer i=0;i<=25;i++){
            case cs = new case(status='New',Subject='TsetCase'+i);
            cslst.add(cs);
        }
     insert cslst;
    }
    @istest static void searchCasestest(){
        case c = [select id,status,subject from case where Subject='TsetCase3'];
        list<case> cases = new list<case>();
        cases = CasesRelatedToSubject.searchCases(c.id);
        system.assertEquals('TsetCase3',cases[3].subject);
    }
}