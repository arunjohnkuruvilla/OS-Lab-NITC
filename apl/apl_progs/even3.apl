decl 
	integer i;
enddecl
integer main()
{
	i = 200;
	while i<601 do
		if (i%2 == 0) then
			print(i);
		endif;
		i = i + 1;
	endwhile;
	return 0;
}
