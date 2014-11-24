integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	//a = Create("sample2.txt");
	
	b = Create("a.txt");
	b = Open("a.txt");
	p = Open("a12.txt");
	q = Open("a34.txt");
	

	i = 10;
	while(i < 30) do
		e = Read(p, word);
		print(word);
		e = Write(b, word);
		i = i + 1;
	endwhile;

	i = 10;
	while(i < 30) do
		e = Read(q, word);
		print(word);
		e = Write(b, word);
		i = i + 1;
	endwhile;

	
	d = Close(q);
	d = Close(p);
	d = Close(b);


	return(0);
}