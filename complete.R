# Function that show a dataframe with the id of the monitor and
# the number of complete cases( sulfate and nitrate exist in the same date)
# for each input df

complete <- function(directory,id=1:332){
  numero <-sprintf("%03d",id)
  total<-0

  # identificador<-rep(0,length(id)) # Make a vector with the length of id vector
  # nobus<-rep(0,length(id))# Same
  identificador<-vector() # Create new empty vector, after we´ll add moe idex
  nobus<-vector()# Same as above

  for(i in 1:length(id)){
    df <- read.csv(paste(directory,"/",numero[i],".csv",sep=""))
    df <- df[complete.cases(df),][,] # Delete all NA's from dataframe

    # identificador[i]<-id[i] # Set value in exact idex
    # nobus[i]<- dim(df)[1] # Same
    identificador<-append(identificador,id[i])# Add id to the vector id
    nobus<-append(nobus,dim(df)[1])# Add No of rows of dataframe
  }
  resultado<-data.frame(identificador,nobus)# Make a dataframe
  names(resultado)<-c("id","nobs")# Set names
  resultado
}
