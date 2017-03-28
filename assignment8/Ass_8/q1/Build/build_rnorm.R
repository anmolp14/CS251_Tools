#!/usr/bin/Rscript
for ( i in 1:10 )
	{ 

	   sink(file=paste("Rnorm_",i,".txt"),append=FALSE,split=FALSE) 
		print(rnorm(100,0.5,0.15))
	
	   	
	}
