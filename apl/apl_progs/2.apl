decl
	integer a;
	integer pid;
	integer p1;
	integer p2;
	integer p;
enddecl

integer main()
{
    pid = Fork();
    if (pid == -2) then 
    	p = Getppid();
		//a = Wait(p);                           
		pid = Fork();
		if(pid == -2) then
			p = Getppid();
			//a = Wait(p);
			print("CHILD1A");
			print("CHILD1A");
			print("CHILD1A");
			print("CHILD1A");
			print("CHILD1A");
			
		else
			a = Wait(2);
			print("CHILD1");
			print("CHILD1");
			print("CHILD1");
			print("CHILD1");
			print("CHILD1");

		endif;
	else
		a = Wait(1);

		print("PARENTS");
		print("PARENTS");
		print("PARENTS");
		print("PARENTS");
		print("PARENTS");

	endif;
	return 0;
}
