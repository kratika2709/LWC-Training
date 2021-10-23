trigger UpdateAccountPhone on Contact (after insert,after update) {
    
    if(trigger.isafter || (trigger.isinsert && trigger.isupdate)){
    List<contact> con = [SELECT Id,LastName,phone, Account.Name, Account.Id,account.phone FROM Contact WHERE Account.Id != null AND Id IN : Trigger.new];
    List<Account> acc = new List<Account>();
    for(Contact s : con)
    {
        Account a = new Account();
      //  a.Id = s.AccountId;
       // a.phone = s.phone;
        acc.add(a);
    }if(!acc.isempty())
    {
    update acc;
    }
}
}