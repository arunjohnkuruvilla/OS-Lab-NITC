integer main()
{	
	integer a;
	a = Create("file");
	if(a == 0) then 
		print("found");
	endif;
	if(a == 1) then
		print("same name found");
	endif;
	if(a == 2) then
		print("no same");
	endif;
	if(a == -1) then
		print("not found");
	endif;
	return 0;
}