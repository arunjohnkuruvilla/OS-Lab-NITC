integer main()
{	
	integer a,b,c,word;
	word=10;
	a = Create("newfile.txt");
	print (a);
	b = Open("newfile.txt");
	print (b);

	integer i;
	i=0;
	while i<1024 do
		c = Write(b, i);
		i=i+1;
	endwhile;	
	return(0);
}