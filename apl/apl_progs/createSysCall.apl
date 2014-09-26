integer main()
{	
	integer a;
	a = Create("File");
	if(a == 0) then 
		print("found");
	else 
		print("not found");
	endif;
	return 0;
}