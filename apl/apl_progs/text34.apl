integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	//a = Create("sample2.txt");
	
	b = Create("sample34.txt");
	b = Open("sample34.txt");
	p = Open("sample3.txt");
	q = Open("sample4.txt");
	

	i = 10;
	while(i < 20) do
		e = Read(p, word);
		print(word);
		e = Write(b, word);
		i = i + 1;
	endwhile;

	i = 10;
	while(i < 20) do
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