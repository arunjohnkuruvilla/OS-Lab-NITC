integer main()
{
	integer pid;
	print ("Before Fork");
	pid = Fork();
	print (pid);
	pid = Getpid();
	print (pid);
	pid = Getppid();
	print (pid);
	print ("After Fork");
	return 0;
}