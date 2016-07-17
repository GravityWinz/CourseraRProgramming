corr <- function (directory, threshold = 0) {
	
	id <- 1:332
	
	v <- vector(mode="numeric", length=0)

	for (x in id)	{
		
		## thiink that there is a better way to do this
		file <- sprintf("%s/%03d.csv",directory,  x) 
		d <- read.csv(file)
		
		dc <- d[complete.cases(d), ]
		
		if ( nrow(dc) > threshold)
		{

			c <- cor(dc["sulfate"],dc["nitrate"])
			
			v <- append (v,c)
		}

				
	}
	v
}
	