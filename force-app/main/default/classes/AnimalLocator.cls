public class AnimalLocator {

  public static String getAnimalNameById(Integer id){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');

        Http http = new Http();
        HttpResponse response = http.send(request);
        String strResp = '';
        System.debug('STATUS CODE : '+response.getStatusCode());
        System.debug('response Body : '+response.getBody());
        if (response.getStatusCode() == 200){
            
           Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
           Map<string,object> animals = (map<string,object>) results.get('animal');
           System.debug('Received the following animals:' + animals );
           strResp = string.valueof(animals.get('name'));
           System.debug('strResp >>>>>>' + strResp );
        }
        return strResp ;
   }
}