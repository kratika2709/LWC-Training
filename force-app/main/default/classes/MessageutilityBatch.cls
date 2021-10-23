public class MessageutilityBatch {
    public static void SendBatchProcessingNotificationEmail(AsyncApexJob jobdetails)
    {
        Messaging.SingleEmailMessage email = new messaging.SingleEmailMessage();
        string[] toaddress = new string[] {jobdetails.createdby.email,'chouhan.kratika2709@gmail.com'};
        email.setToaddresses(toaddress);
        
        string emailsubject = 'Batch job: UpdateContactBatch '+jobdetails.id + 'status notification';
        email.setSubject(emailsubject);
        
        string emailcontent = 'pleas find the job details below</br>'+
            					'</br> batch id :'+jobdetails.id+
            					'</br> batch status:'+jobdetails.status+
            					'</br> batch items to process:'+jobdetails.JobItemsProcessed+
            					'</br> Total batch items: '+jobdetails.TotalJobItems+
            					'</br> Number of Errors:'+jobdetails.NumberOfErrors;
        
        email.setHtmlBody(emailcontent);
        email.setreplyto('support@dell.com');
        email.setSenderDisplayName('Batch Apex Processing Notification');
        
        messaging.sendemail(new messaging.singleemailmessage []{email});
        
            					
            
            
}
    public static void SendBatchProcessingNotificationEmailStateMana(AsyncApexJob jobdetails, decimal totalannualrevenue, string jobname)
    {
        Messaging.SingleEmailMessage email = new messaging.SingleEmailMessage();
        string[] toaddress = new string[] {jobdetails.createdby.email,'chouhan.kratika2709@gmail.com'};
        email.setToaddresses(toaddress);
        
        string emailsubject = 'Batch job: '+jobname+' -'+jobdetails.id + 'status notification';
        email.setSubject(emailsubject);
        
        string emailcontent = 'pleas find the job details below:'+ jobname+ '</br>'+
            					'</br> batch id :'+jobdetails.id+
            					'</br> batch status:'+jobdetails.status+
            					'</br> batch items to process:'+jobdetails.JobItemsProcessed+
            					'</br> Total batch items: '+jobdetails.TotalJobItems+
            					'</br> Number of Errors:'+jobdetails.NumberOfErrors;
          if (totalannualrevenue > 0.0)
          {
              emailcontent+= '</br> Total Revenue:'+totalannualrevenue;
          }
        
        email.setHtmlBody(emailcontent);
        email.setreplyto('support@dell.com');
        email.setSenderDisplayName(jobname+'Batch Apex Processing Notification');
        
        messaging.sendemail(new messaging.singleemailmessage []{email});
        
            					
            
    }}