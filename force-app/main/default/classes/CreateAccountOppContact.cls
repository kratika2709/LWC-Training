public class CreateAccountOppContact {

    public static void CreateAccountOppContactMethod(){
        account acc = new account (name= 'DemoTest');
        insert acc;
        system.debug(acc);
        contact con = new contact(firstname='Demo',lastname='Test',accountid =acc.Id);
        insert con;
        system.debug(con);
        opportunity opp = new opportunity (Name='DemoTestOpp',StageName='Prospecting',CloseDate=system.today(),accountid =acc.Id);
        insert opp;
        system.debug(opp);
        
    }
   
}