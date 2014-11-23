integer main()
{	
	integer a,b,c,d;
	string filename;
	filename = "even2.xsm";
	//read (filename);

	a = Fork();

	if(a == -2) then
		c = -1;
		c = Exec(filename);

		if(c == -1) then
			print("cannot");
		endif;

		//Exit();

	endif;
	if(a == 0) then
		b = Wait(1);
		c = Exec("odd2.xsm");
		print (b);
	endif;

	return (0);
}