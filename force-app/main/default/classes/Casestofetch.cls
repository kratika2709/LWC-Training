public class Casestofetch {
    @AuraEnabled 
    public static list<case> casesbykeyword()
      {
          list<list<sobject>> alllist = [FIND 'generator' RETURNING case (id,subject,casenumber,origin,status where status= 'closed')];
          list<case> lstcase = alllist[0];
          system.debug(lstcase);
          return lstcase;
      }
}