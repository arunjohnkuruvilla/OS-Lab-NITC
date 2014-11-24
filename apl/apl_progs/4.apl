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
			print("Proc3"); 
			a = Exec("text1.xsm");
		endif;

		a = Wait(p4);
		p5 = Fork();
		if(p5 == -2) then
			print("Proc6"); 
			a = Exec("text2.xsm");
		endif;
		a = Wait(p5);
		print("Proc7"); 
		a = Exec("text12.xsm");
	endif;

	a = Wait(p1);
	print("Proc8"); 
	p3 = Fork();
	if(p3 == -2) then
		p6 = Fork();
    	if(p6 == -2) then  
    		print("Proc10");                     
			a = Exec("test3.xsm");
		endif;

		a = Wait(p6);

		p7 = Fork();
		if(p7 == -2) then
			print("Proc11");
			a = Exec("text4.xsm");
		endif;
		a = Wait(p7);
		print("Proc12");
		a = Exec("text34.xsm");
	endif;
	a = Wait(p3);
	print("Proc9");
	a = Exec("text1234.xsm");
	return 0;
}
