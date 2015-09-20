
corr <- function(directory, threshold = 0) {

files_full=list.files(directory,full.names=TRUE)

	correlation<-vector("numeric")	
	for(i in seq_along(files_full))
	{	
		dat <- data.frame()
		orig_dat<-data.frame()
		
		dat <- rbind(dat, read.csv(files_full[i]))
		orig_dat<-dat[complete.cases(dat),]
		each_count<-c(id=i,nobs=nrow(orig_dat))
		
		if(each_count["nobs"]>threshold)
			{
				correlation<-c(correlation,cor(dat$sulfate,dat$nitrate,use="complete.obs"))
				
	}			}
	
correlation

}
