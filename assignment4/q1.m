n=input("Enter n : " );
k=input("enter k : ");
if( n < 0)
       disp( " \"n\" entered is negative" )
       return;
endif       
count =0;
for i = 1:k
    a = unifrnd( 0, (n+1)/2 );
    if( a*a <= n )
       count ++;    
    endif
endfor    
root_n = (count * (n+1)/2) / k 