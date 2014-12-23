decl
	integer status1;
	integer status2;
	integer status3;
	string filename;
enddecl
integer main()
{
	print("File Name:");
	read(filename);
	while(filename!="exit") do
		//status1=Fork();
		//if(status1==-2) then
			status2=Exec(filename);
		//else
		//	status3=Wait(status1);
		//endif;
		if(status2 < 0) then
			print("Error");
		endif;
		print("File name 35:");
		read(filename);
	endwhile;
	return 0;
}
