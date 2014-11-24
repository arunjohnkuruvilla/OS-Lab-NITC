integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	//a = Create("sample2.txt");
	
	p = Create("a2.txt");
	p = Open("a2.txt");

	i = 10;
	while(i < 20) do
		print(i);
		e = Write(p, i);
		i = i + 1;
	endwhile;

	d = Close(p);
	return(0);
}