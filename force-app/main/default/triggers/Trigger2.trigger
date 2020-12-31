trigger Trigger2 on Contact (before insert) {
    //when ever a record is inserted to the contact automatically inserted to the account
    if(Recursive.flag)//it comes from the recursive class
	{
	Recursive.flag=false;
	list<account>a=new list<account>(); 
    for(contact c:trigger.new)
	{
		account a1=new account();
        a1.Phone=c.Phone; 
        a1.Name=c.LastName; 
        a.add(a1);
		}
insert a; 
    }

}