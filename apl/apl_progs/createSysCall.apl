integer main()
{	
	integer a,b,c;
	a = Open("newfile.txt");
	print (a);
	c = Close(a);
	print (c);
	b = Delete("newfile.txt");
	print (b);
	return(0);
}