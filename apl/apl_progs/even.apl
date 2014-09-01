decl 
	integer i;
enddecl
integer main()
{
	i = 1;
	while i<21 do
		if (i%2 == 0) then
			print(i);
		endif;
		i = i + 1;
	endwhile;
	return 0;
}
