integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	//a = Create("sample2.txt");
	

	p = Open("sample1.txt");
	q = Open("sample2.txt");
	b = Open("sample3.txt");

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

	d = Close(b);
	d = Close(q);
	d = Close(p);


	return(0);
}