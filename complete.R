complete <- function (directory, id = 1:332) {
	
	df <- data.frame(
		id=integer(),
		nobs=integer(),
		stringsAsFactors=FALSE) 

	
	for (x in id)	{
	
		## thiink that there is a better way to do this
		file <- paste(directory,"/", sprintf("%03d.csv",  x) , sep="")
		d <- read.csv(file)
		
		dc <- d[complete.cases(d), ]
		
		l <- nrow(dc)
		
		df <- rbind(df, c(x,l) )
		
	}

	colnames(df) <- c("id","nobs")
	
	
	df
}