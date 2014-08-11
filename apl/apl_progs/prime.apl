decl 
	integer n;
	integer check(integer x);
	integer c;
enddecl

integer check(integer x){
	integer f;
	f = 1;
	integer i;
	i = 2;
	while (i*i <= x) do
		if(x%i == 0) then
			f = 0;
		endif;
		i = i + 1;
	endwhile;
return f;
}
integer main(){
	read (n);
	c = 2;
	while (c <= n) do
		if(check(c) == 1) then
			print(c);
			endif;
		c = c + 1;
	endwhile;
return 0;
}