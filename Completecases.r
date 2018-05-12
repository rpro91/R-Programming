Completecases <- function(directory, id = 1:332) {
		files <- list.files(directory, full.names = TRUE)	#getting the name of files from the directory#
		rowid=c()											#initialising the two vectors rowid and noobs#
		noobs=c()
		readings= data.frame()								#initialising the data frame#
		for(i in seq_along(id)) {
			readings <- rbind(readings, read.csv(files[id[i]]))		#reading the files into the  dataframe#
		
		Completeobs=readings[complete.cases(readings),]				#subsetting the dataframe with only rows that are complete#
		
		rowid=c(rowid,i)
		noobs=c(noobs,nrow(Completeobs))
        }
	data.frame(id=rowid,nobs=noobs)
	}
	