#!/usr/bin/Rscript

data = read.table("Rnorm1.txt")
sink(file="Rnorm2.txt",append=FALSE,split=FALSE)
t(t(table(cut(data[1:100,], breaks=seq(0,100,25)))))

data = read.table("runif1.txt")
sink(file="runif2.txt",append=FALSE,split=FALSE)
t(t(table(cut(data[1:100,], breaks=seq(0,100,25)))))

