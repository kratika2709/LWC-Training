public class EmailProgramming {
    
    //method to send email to one or more users.......
    public static void messageutility(customer__c cst, string emailsubject)
    {
       messaging.SingleEmailMessage email = new messaging.SingleEmailMessage();
        string [] toaddress = new string[] {'chouhan.kratika2709@gmail.com',cst.Email__c};
         email.settoaddresses(toaddress);
        
        string [] ccaddress = new string[] {'chouhan.kratika2709@gmail.com',cst.Email__c};
            //email.setCcAddresses(ccaddress);
        
         string [] bccaddress = new string[] {'chouhan.kratika2709@gmail.com',cst.Email__c};
             //email.setBccAddresses(bccaddress);
        
        email.setReplyTo('support@dell.com');
        email.setSenderDisplayName('Infofeat');
        email.setSubject(emailsubject);
        
        string plainemailbody = 'Dear'+ cst.name+'Congratulation. you are selected for the post of salesforce developer.';
        //email.setPlainTextBody(plainemailbody);
        
        string Htmlemailbody =  'Dear'+cst.name+'Congratulation. you are selected for the post of salesforce developer.<br/>'+
                                 '<br/>customer Details is given below'+
                                  '<br/> customer id is:'+ cst.id+
                                  '<br/> customer name is:'+ cst.name;
        
        email.setHtmlBody(Htmlemailbody);
        messaging.sendEmail(new messaging.SingleEmailMessage[] {email});
       } 
    
    //method to send email to colletion of users.......
    public static void messageutility(list<customer__c> lstcst, string emailsubject)
    {
        if(!lstcst.isEmpty())
        {
                list<messaging.SingleEmailMessage> emailnotification = new list<messaging.singleemailmessage>();
                for(customer__c cst : lstcst)
                {
                   messaging.SingleEmailMessage email = new messaging.SingleEmailMessage();
                    string [] toaddress = new string[] {'chouhan.kratika2709@gmail.com',cst.Email__c};
                     email.settoaddresses(toaddress);
                    
                    string [] ccaddress = new string[] {'chouhan.kratika2709@gmail.com',cst.Email__c};
                        //email.setCcAddresses(ccaddress);
                    
                     string [] bccaddress = new string[] {'chouhan.kratika2709@gmail.com',cst.Email__c};
                         //email.setBccAddresses(bccaddress);
                    
                    email.setReplyTo('support@dell.com');
                    email.setSenderDisplayName('Infofeat');
                    email.setSubject(emailsubject);
                    
                    string plainemailbody = 'Dear'+ cst.name+'Congratulation. you are selected for the post of salesforce developer.';
                    //email.setPlainTextBody(plainemailbody);
                    
                    string Htmlemailbody =  'Dear'+cst.name+'Congratulation. you are selected for the post of salesforce developer.<br/>'+
                                             '<br/>customer Details is given below'+
                                              '<br/> customer id is:'+ cst.id+
                                              '<br/> customer name is:'+ cst.name;
                    
                    email.setHtmlBody(Htmlemailbody);
                    emailnotification.add(email);
                    
                    
                }
                    if(!emailnotification.isempty())
                    {
                        messaging.sendemailresult
                            
                            [] results = messaging.sendemail(emailnotification,false);
                    }
                    
                    
                    }
    }
    
 //method to send email Mass Email Notifications....

    public static void sendnotificationtocontactforPan()
          {
     //get all te contact record to send te notification........
           map<id,contact> mapcontosend = new map<id,contact> ([select id, firstname,lastname,pan_number__c,email from contact where pan_number__c = null and email != null]);
            
            if (!mapcontosend.isempty())
            {
      //create an object for mass messaging class........
            
                messaging.massemailmessage massemail = new messaging.MassEmailMessage();
                list<id> conids = new list<id>();
                conids.addall(mapcontosend.keyset());
                
                Emailtemplate template = [select id, name from emailtemplate where name = 'Pan number notification' limit 1];
                if (template !=null)
                {
                    massemail.setTemplateId(template.id);
                    
                 //Send the email notification.............
                    messaging.sendemail(new messaging.MassEmailMessage[]{massemail});   
                }
                
                
            }
          }
}