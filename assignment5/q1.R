#!/usr/bin/env Rscript

iarg = commandArgs(trailingOnly=TRUE)
load(file=iarg[1]  );

m1=mean(data1) 
me1=median(data1)
sd1=sd(data1)

m2=mean(data2) 
me2=median(data2)
sd2=sd(data2)

m3=mean(data3) 
me3=median(data3)
sd3=sd(data3)

cat (sprintf("    	     Mean		    Median 	      Standard deviation  \n" ))
cat (sprintf("data1    %0.10f           %0.10f            %0.10f \n", m1,me1,sd1   ))
cat (sprintf("data2    %0.10f           %0.10f            %0.10f \n", m2,me2,sd2   ))
cat (sprintf("data3    %0.10f           %0.10f            %0.10f \n\n", m3,me3,sd3   ))

cat(sprintf("Quantiles  \n\n"  )  )
cat(sprintf("data1  \n"  )  )
quantile(data1)
cat(sprintf("\ndata2  \n"  )  )
quantile(data2)
cat(sprintf("\ndata3  \n"  )  )
quantile(data3)


