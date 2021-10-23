public class VFCalculator {
    public integer firstnumber {get;set;}
    public integer secondnumber {get;set;}
    public integer result {get;set;}
    public  void Addition()
    {
        result= firstnumber + secondnumber;
    }
    public  void Multiplication()
    {
        result= firstnumber * secondnumber;
        apexpages.addmessage(new Apexpages.Message(Apexpages.severity.CONFIRM,'Multiplication done successfully.'));
    }
    public  void Subtraction()
    {
        result= firstnumber - secondnumber;
    }
}