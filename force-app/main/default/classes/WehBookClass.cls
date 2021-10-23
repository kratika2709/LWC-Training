@RestResource(urlMapping='/wehbook/')
global class WehBookClass {
    global static string WehBookmethod(){
         RestRequest req = RestContext.request;
        
        RestResponse res = RestContext.response;
        
        string arr = req.requestBody.toString();
        
        system.debug('Body is'+ arr);
        
        return 'hey';
        
    }
}