trigger HelloWordtrigger on Account (before insert) {
     System.debug('Hello World!');
}