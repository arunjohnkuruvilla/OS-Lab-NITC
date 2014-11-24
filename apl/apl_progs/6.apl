integer main()
{	
	integer a,b,c,d,word,i,p,q;
	a = Create("sample12.txt");
	b = Open("sample12.txt");
	p = Open("sample1.txt");
	q = Open("sample2.txt");

	i = 0;
	while(i < 10) do
		e = Read(p, word);
		d = Seek(p, i+1);
		c = Write(b, word);
		d = Seek(b, i+1);
		i = i + 1;
	endwhile;

	while(i < 20) do
		e = Read(q, word);
		d = Seek(q, i+1);
		c = Write(b, word);
		d = Seek(b, i+1);
		i = i + 1;
	endwhile;

	d = Close(b);

	return(0);
}