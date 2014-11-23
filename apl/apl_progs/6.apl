integer main()
{	
	integer a,b,c,d,word,i;
	a = Create("sample1.txt");
	b = Open("sample1.txt");

	i = 0;
	while(i < 10) do
		c = Write(b, i);
		print (c);
		d = Seek(b, i+1);
		print (d);
		i = i + 1;
	endwhile;

	d = Close(b);

	return(0);
}