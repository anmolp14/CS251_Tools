#!/bin/bash

 awk -F',' '{    if ( NF == 1 || NF == 2 )
{  if ( NF == 1)
       print $1
   else
      print $2","$1	   

					}
		       else{	       
			       for( i=1 ; i< NF-1 ; i+=2 ) 
				       { printf $(i+1)","$i","


					       if( NF % 2 == 0 && i == NF-3 )
						       print $NF","$(NF-1)
						       if( NF % 2 !=0 && i == NF-2 )
							       { print $NF    }

						       }
					       }
				       }'  $1 

