integer main()
{	
	integer a,b,c,word;
	a = Create("newfile.txt");
	print (a);
	b = Open("newfile.txt");
	print (b);

	c = Read(b, word);
	print (c);
	print (word);

	c = Read(b, word);
	print (c);
	print (word);
	c = Read(b, word);
	print (c);
	print (word);
	c = Read(b, word);
	print (c);
	print (word);
	return(0);
}