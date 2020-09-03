# This is an function to calculate the mean of sulfate or nitrate
# across a specifies list of monitors usning air pollution database

pollutantmean<-function(directory,pullulant,id=1:332){

  promedio<-0
  tamano<-0
  numero<-sprintf("%03d",id) #this makes our guiven number into a 00X number of length 3

  for(i in 1:length(id)){
    new_dir<-paste(directory,"/",numero[i],".csv",sep="") # Create the áth of the file
    df<-read.csv(new_dir)#Read csv

    lista <- df[[pullulant]][!is.na(df[[pullulant]])] # Drop all NA fromour column
    # lista <- df[!is.na(df[,columna]),columna]
    tamano <- tamano+length(lista)# Count all positive data
    promedio<-promedio+sum(lista)# sum all values of the df guiven
  }
  promedio <- promedio/tamano# mean
  promedio
}
