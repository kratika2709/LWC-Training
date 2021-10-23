public class httpClass {
    public static void getResponse(){
    http ht = new http();
    
    httpRequest htreq = new httpRequest();
    htreq.setEndpoint('https://www.eventbriteapi.com/v3/events/168276131439/');
    htreq.setMethod('GET');
    htreq.setHeader('Authorization', 'Bearer 6MODEPY2RCBPU3VZ5BM5');
    htreq.setHeader('Content-Type', 'application/json');
    htreq.setHeader('Accept','application/json');
    
    httpResponse htres = new httpResponse();
    htres = ht.send(htreq);
    system.debug(htres.getstatuscode());
}
}