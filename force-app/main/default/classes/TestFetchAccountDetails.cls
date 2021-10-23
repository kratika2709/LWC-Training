@istest
public class TestFetchAccountDetails {
  @testsetup
    static void TestFetchAccountDetails(){
       list<account> acclst= new list<account>(); 
        for(integer i=0;i<=25;i++){
        account acc= new account(name='testApex'+i);
        acclst.add(acc);
        }
    insert acclst;
    }
    
    @istest
    static void testFetchAccountDetailsMethod()
    {
        account acc1= [select id ,name from account where name='testApex3'];
        List<Account> accList = FetchAccountDetails.FetchAccountDetailsMethod(acc1.id);
        List<Account> accNameList = FetchAccountDetails.findByName(acc1.name);
        System.assertEquals('testApex3',accList[3].name);
        
    }
}