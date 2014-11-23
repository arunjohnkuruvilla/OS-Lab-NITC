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
		a = Wait(p);
		a = Exec("even2.xsm");
	else
		pid = Fork();
		if (pid == -2) then
			p = Getppid();
			a = Wait(p);
			a = Wait(1);
			a = Exec("odd2.xsm");
        else
			a = Exec("harry.xsm");
		endif;
	endif;
	return 0;
}
