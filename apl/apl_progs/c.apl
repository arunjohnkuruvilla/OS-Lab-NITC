decl
	integer status1;
	integer status2;
	integer status3;
	string filename;
	integer i;
enddecl
integer main()
{
	i = 1;
	while (i < 31) do
		print(i);
		i = i + 1;
	endwhile;
	status1=Fork();
	if(status1==-2) then
		status2=Exec("d.xsm");
	endif;
	//status3 = Wait(status1);

	return 0;
}