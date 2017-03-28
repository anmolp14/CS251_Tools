arg=commandArgs(trailingOnly=TRUE) 
leaves = read.csv( arg[1])

cat(sprintf("Mean of each attribute wrt Species\n"))

aggregate(cbind( Sepal.Length  , Sepal.Width , Petal.Length, Petal.Width)  ~ Species , data = leaves , mean )

cat(sprintf("\nContingency table for Species and Good"))
table(leaves$Species , leaves$Good) 


cat(sprintf("\nMean of each attribute wrt Good\n"))
aggregate(cbind( Sepal.Length  , Sepal.Width , Petal.Length, Petal.Width)  ~ Good , data = leaves , mean )

cat(sprintf("\nDetailed Contingency table for each attribute\n"))

aggregate(cbind( Sepal.Length  , Sepal.Width , Petal.Length, Petal.Width)  ~ (Species + Good) , data = leaves , mean )

	
barplot(table( leaves$Good , leaves$Species ),
	  main = "Goodness for Species",
	    xlab = "Species",
	    col = c("red","green","cyan" )
	    )

legend("topleft",
         c("Bad","Good","Medium"),
	   fill = c("red","green","cyan")
	 )





