decl 
	integer i;
enddecl
integer main()
{
	i = 2;
	while (i < 21) do
		if (i%2 == 1) then
			print(i);
		endif;
		i = i + 1;
	endwhile;
	return 0;
}
