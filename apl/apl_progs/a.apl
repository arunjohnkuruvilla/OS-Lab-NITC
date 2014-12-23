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
		status2=Exec("b.xsm");
	endif;
	//status3 = Wait(status1);
		status3 = Signal();
		i = 100;
		while (i < 140) do
				print(i);
			i = i + 1;
		endwhile;
	return 0;
}