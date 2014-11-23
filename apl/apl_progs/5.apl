decl
	integer a;
	integer pid;
	integer p1;
	integer p2;
	integer p3;
	integer p,b,c,d,word,i;
enddecl

integer main()
{
    p1 = Fork();
    if (p1 == -2) then                           
		p2 = Fork();
		if(p2 == -2) then                         
			p3 = Fork();

			if(p3 == -2) then
				a = Create("sample1.txt");
				b = Open("sample1.txt");

				i = 0;
				while(i < 10) do
					c = Write(b, i);
					d = Seek(b, i+1);
					i = i + 1;
				endwhile;

				d = Close(b);
			else
				a = Wait(p3);
				a = Create("sample2.txt");
				b = Open("sample2.txt");

				i = 0;
				while(i < 10) do
					c = Write(b, i+10);
					d = Seek(b, i+1);
					i = i + 1;
				endwhile;

				d = Close(b);
			endif;
		else
			a = Wait(p2);
			p = Exec("odd2.xsm");
		endif;
	else
		a = Wait(p1);
		p = Exec("harry.xsm");
	endif;
	return 0;
}
