integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	//a = Create("sample2.txt");
	
	p = Create("a3.txt");
	p = Open("a3.txt");

	i = 20;
	while(i < 30) do
		print(i);
		e = Write(p, i);
		i = i + 1;
	endwhile;

	d = Close(p);
	return(0);
}