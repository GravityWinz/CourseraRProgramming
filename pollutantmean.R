pollutantmean <- function (directory, pollutent, id = 1:332) {
  ## directory - path to the directory
  ## pollutent -- one of sulfate or nitrate
  ## id -- integet vector indicating which ID to monitor
  

  
  f <- sprintf("%03d.csv", id)
  
  l <- data.frame(Date=as.Date(character()),
                  sulfate=double(), 
                  nitrate=double(), 
                  ID=integer(),
                  stringsAsFactors=FALSE) 
  
  for ( x in f )
  {
    print(x)
    ## thiink that there is a better way to do this
    d <- read.csv(paste(directory,"/", x, sep=""))
    l <- rbind(l, d )

  }
  
  l
}