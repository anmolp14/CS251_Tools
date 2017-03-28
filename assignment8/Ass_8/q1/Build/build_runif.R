#!/usr/bin/Rscript


for(i in 1:10)
{
sink(file=paste("runif_",i,".txt"),append=FALSE,split=FALSE)
	  	print(runif(100,0.0,1.0) )  
}
