integer main()
{	
	integer a,b,c,d,word,i,p,q,e;
	b = Open("sample1.txt");
	p = Open("sample2.txt");
	q = Open("sample12.txt");
	

	i = 0;
	while(i < 10) do
		e = Read(b, word);
	print(word);
		d = Seek(b, i+1);
		
		c = Write(q, word);
		d = Seek(q, i+1);
		i = i + 1;
	endwhile;

	while(i < 20) do
		e = Read(p, word);
	print(word);
		d = Seek(p, i+1);
		c = Write(q, word);
		d = Seek(q, i+1);
		i = i + 1;
	endwhile;

	d = Close(q);
	d = Close(p);
	d = Close(b);
	
	

	return(0);
}