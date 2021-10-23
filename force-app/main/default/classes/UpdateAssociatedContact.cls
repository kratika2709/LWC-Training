public class UpdateAssociatedContact {
       public static void ContactUpdation(map<id,account> oldmap, map<id,account> newmap)
       {
           list<id> acc = new list<id>();
           for(id key : oldmap.keyset())
           {
               Account oldvalue = oldmap.get(key);
               Account newvalue = newmap.get(key);
               if(oldvalue.phone!= newvalue.Phone)
               {
                   acc.add(key);
               }
           }
            list<contact> conlst= new list<contact>([select id,firstname,lastname,accountid from contact where accountid IN : acc]); 
               for (contact con: conlst)
               {
                   con.phone = newmap.get(con.accountid).phone;
                  
                   
               }
               
            update conlst;
           
       }
}