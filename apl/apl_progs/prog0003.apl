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
			pid = Fork();
			if(pid == -2) then
				p = Getppid();
				//a = Wait(p);
				p = Exec("harry.xsm");
			else
				a = Wait(3);
				p = Exec("even2.xsm");
			endif;
		else
			a = Wait(2);
			p = Exec("odd2.xsm");
		endif;
	else
		a = Wait(1);
		p = Exec("harry.xsm");
	endif;
	return 0;
}
