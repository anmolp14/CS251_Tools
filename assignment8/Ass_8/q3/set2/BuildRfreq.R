#!/usr/bin/Rscript
da = read.table("output_Rnorm_final.txt",header=FALSE)
op = data.frame(range = c("[0.0-0.34]","(0.34-0.66)","[0.66-1.0]"))
op$freq <- table(cut(da[1:500,], breaks=c(0,34,66,100)))
sink(file="out_freq_Rnorm.txt",append=FALSE,split=FALSE)
op

da = read.table("output_runif_final.txt",header=FALSE)
op = data.frame(range = c("[0.0-0.34]","(0.34-0.66)","[0.66-1.0]"))
op$freq <- table(cut(da[1:500,], breaks=c(0,34,66,100)))
sink(file="out_freq_runif.txt",append=FALSE,split=FALSE)
op
