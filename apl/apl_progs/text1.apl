integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	//a = Create("sample2.txt");
	
	p = Create("sample1.txt");
	p = Open("sample1.txt");

	i = 0;
	while(i < 10) do
		print(i);
		e = Write(p, i);
		i = i + 1;
	endwhile;

	d = Close(p);
	return(0);
}