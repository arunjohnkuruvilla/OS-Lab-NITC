integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	//a = Create("sample2.txt");
	
	p = Create("sample4.txt");
	p = Open("sample4.txt");
	print(p);
	i = 30;
	while(i < 40) do
		print(i);
		e = Write(p, i);
		print(e);
		i = i + 1;
	endwhile;

	d = Close(p);
	return(0);
}