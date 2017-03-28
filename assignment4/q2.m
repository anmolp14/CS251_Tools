function q2( n , m = 2 , d = 4 )
    if( m <= 0)
       disp( " \"m\" is not non-negative " )
       return; 
    endif   
    if( d < 0)
       disp( " \"d\" entered is negative but number of decimal places cannot be negative" )
       return;     
    endif  
    if( n == 1 )
        printf("%.*f\n" ,d,1 ) ;   
        return;
    elseif( n == -1 )
        root = sqrt(-1)^(2/m)  ;
        printf( "%.*f + %.*f i\n", d , real(root),d,imag(root) ); 
        return;
    elseif( n == 0 )
        printf("%.*f\n" ,d,0 ) ;   
        return;   
    elseif ( m == 1)
        printf("%.*f\n" ,d,n );
        return; 
    else
        nf=0; 
        if( n < 0 )
           nf=n;
           n=abs(n);
        endif        
        if( n > 1 )
            low= 1;
            high= (n+1)/2;
        else
            low = n;
            high = 1;
        endif     
        root=unifrnd(low,high);
        while( abs((root^m ) - n) > (0.1)^(d+1)  ) 
              if( (root^m ) - n < 0)
                  low=root;
              else
                  high=root;     
              endif
              root = unifrnd(low,high);
        endwhile
        if(nf < 0)
            if( rem (m ,2) == 1 )
                root= -root;
            elseif( m==2 )
                root = sqrt (-1)* root ;
            else
                root = (-1) ^ (1/m) * root;
            endif 
            printf( "%.*f + %.*f i\n", d , real(root), d , imag(root) );        
        else
            printf( "%.*f\n",d,root );
        
        endif              
        
            
    endif    
endfunction
