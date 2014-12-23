decl
	integer status1;
	integer status2;
	integer status3;
	string filename;
	integer i;
enddecl
integer main()
{
	status1=Fork();
	if(status1==-2) then
		status2=Exec("even3.xsm");
	endif;
	//status3 = Wait(status1);
		i = 100;
		while (i < 150) do
			if (i%2 == 1) then
				print(i);
			endif;
			i = i + 1;
		endwhile;
	return 0;
}