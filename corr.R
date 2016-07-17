corr <- function (directory, threshold = 0) {
	
	id <- 1:332
	
	df <- data.frame(
		id=integer(),
		nobs=integer(),
		stringsAsFactors=FALSE) 
	
	
	for (x in id)	{
		
		## thiink that there is a better way to do this
		file <- sprintf("%s/%03d.csv",directory,  x) 
		d <- read.csv(file)
		
		dc <- d[complete.cases(d), ]
		
		if ( nrow(dc) > threshold)
		{

			cor(dc["sulfate"],dc["nitrate"])
		}

				
	}
	
	colnames(df) <- c("id","nobs")
	
	
	df
}
	
}