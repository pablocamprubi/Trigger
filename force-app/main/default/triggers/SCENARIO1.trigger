trigger SCENARIO1 on Account (before insert) {
    //Each time you create an Account it creates a related Contact with same name.
    list<contact> c=new list<contact>();
    for(account a:trigger.new)
	{
		contact b=new contact();
        b.LastName=a.Name;
        b.AccountId=a.Id;
        c.add(b);
		}
 	insert c;
}