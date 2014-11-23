decl
	integer a;
	integer pid;
	integer p1;
	integer p2;
	integer p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15;
	integer p;
enddecl

integer main()
{
    p1 = Fork();
    if (p1 == -2) then 
    	p4 = Fork();
    	if(p4 == -2) then                         
			p8 = Fork();
	    	if(p8 == -2) then                         
				a = Exec("even2.xsm");
			endif;

			a = Wait(p8);
			p9 = Fork();
			if(p9 == -2) then
				a = Exec("odd2.xsm");
			endif;

			a = Wait(p9);

			a = Exec("harry.xsm");
		endif;

		a = Wait(p4);
		p5 = Fork();
		if(p5 == -2) then
			p10 = Fork();
	    	if(p10 == -2) then                         
				a = Exec("even2.xsm");
			endif;

			a = Wait(p10);

			p11 = Fork();
			if(p11 == -2) then
				a = Exec("odd2.xsm");
			endif;

			a = Wait(p11);

			a = Exec("harry.xsm");
		endif;
		a = Wait(p5);

		a = Exec("harry.xsm");
	endif;
	a = Wait(p1);

	p3 = Fork();
	if(p3 == -2) then
		p6 = Fork();
		print (p6);
    	if(p6 == -2) then                         
			p12 = Fork();
	    	if(p12 == -2) then                         
				a = Exec("even2.xsm");
			endif;

			a = Wait(p12);
			p13 = Fork();
			if(p13 == -2) then
				a = Exec("odd2.xsm");
			endif;
			a = Wait(p13);

			a = Exec("harry.xsm");
		endif;

		a = Wait(p6);

		p7 = Fork();
		if(p7 == -2) then
			p14 = Fork();
	    	if(p14 == -2) then                         
				a = Exec("even2.xsm");
			endif;

			a = Wait(p14);

			p15 = Fork();
			if(p15 == -2) then
				a = Exec("odd2.xsm");
			endif;
			a = Wait(p15);

			a = Exec("harry.xsm");
		endif;
		a = Wait(p7);

		a = Exec("harry.xsm");
	endif;
	a = Wait(p3);
	
	a = Exec("potter.xsm");
	return 0;
}
