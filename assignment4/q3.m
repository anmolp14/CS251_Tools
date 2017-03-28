disp( "sample size 10^1 : ")
sampl = exprnd(0.5 , 10 ,1);
m = mean ( sampl );
s = std ( sampl);
printf( "mean = %f \nstandard deviation = %f \n" , m ,s );  
printf ( "difference with actual mean : %f \n\n" , abs (0.5 - m ));
disp( "sample size 10^2 : ")
sampl = exprnd(0.5 , 100 ,1);
m = mean ( sampl );
s = std ( sampl);
printf( "mean = %f \nstandard deviation = %f \n" , m ,s );  
printf ( "difference with actual mean : %f \n\n" , abs (0.5 - m ));
disp( "sample size 10^3 : ")
sampl = exprnd(0.5 , 1000 ,1);
m = mean ( sampl );
s = std ( sampl);
printf( "mean = %f \nstandard deviation = %f \n" , m ,s );  
printf ( "difference with actual mean : %f \n\n" , abs (0.5 - m ));
disp( "sample size 10^4 : ")
sampl = exprnd(0.5 , 10000 ,1);
m = mean ( sampl );
s = std ( sampl);
printf( "mean = %f \nstandard deviation = %f \n" , m ,s );  
printf ( "difference with actual mean : %f \n\n" , abs (0.5 - m ));
disp( "sample size 10^5 : ")
sampl = exprnd(0.5 , 100000 ,1);
m = mean ( sampl );
s = std ( sampl);
printf( "mean = %f \nstandard deviation = %f \n" , m ,s );  
printf ( "difference with actual mean : %f \n\n" , abs (0.5 - m ));
disp( "sample size 10^6 : ")
sampl = exprnd(0.5 , 1000000 ,1);
m = mean ( sampl );
s = std ( sampl);
printf( "mean = %f \nstandard deviation = %f \n" , m ,s );  
printf ( "difference with actual mean : %f \n\n" , abs (0.5 - m ));