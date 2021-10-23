@istest
public class TestAppEventUseCase {
    @testsetup
    public static void setup(){
        account acc= new account(name='TestAcc');
        insert acc;
    }
     
   
    @istest
    public static void accListtest(){
         Account ac = [select id,name from account where name='TestAcc'];
        AppEventUseCase.accList(ac.name);
        AppEventUseCase.conList(ac.id);
        AppEventUseCase.oppList(ac.id);
    }
}