public class RandomContactFactory {
    public static list<contact> generateRandomContacts(integer Noofcongen,string LastName){
        list<contact> conlist = new list<contact>();
         for(integer i=0; i<Noofcongen; i++){
            contact c = new contact(FirstName='Testcontact' + i, LastName='smith');
            conlist.add(c);
            
            
        }
        return conlist;
    }
}