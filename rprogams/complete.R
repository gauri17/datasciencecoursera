complete <- function(directory, id = 1:332) {
files_full=list.files(directory,full.names=TRUE)
	each_count<-data.frame()
		
	for(i in id)
	{	
		dat <- data.frame()
		orig_dat<-data.frame()
		
		dat <- rbind(dat, read.csv(files_full[i]))
		orig_dat<-dat[complete.cases(dat),]
		each_count<-rbind(each_count,c(id=i,nobs=nrow(orig_dat)))
		
		}
colnames(each_count)<-c("id","nobs")
each_count	
		
}
