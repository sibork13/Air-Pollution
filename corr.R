# '''
# Function that calculates the correlation between sulfate and nitrate
# in air pollution with data stored in monitors from USA
# '''
#
# '''
# The funtion return a vector with all correlation of all
# files in an specific directory, threshold is a limitor of number
# of cases. to meet threshold requeriments, bot values must exist
# sulfate and nitrate in the same date (row)
# '''
corr<-function(directory,threshold=0){
  temp <- list.files(directory,pattern="*.csv") # This line make an array of all files names
  cr<-vector()
  contador<-0
  for(i in 1:length(temp)){
    dir<-paste(directory,"/",temp[i],sep="")
    df<-read.csv(dir)
    # Make alist of sulfate values and select index from it
    df<-df[complete.cases(df),][,]# Take only values that have non NA in sulfate and nitrate
    sulfato<-df$sulfate
    nitrato<-df$nitrate
    if(threshold>= length(sulfato) | threshold >=length(nitrato) ){
      next
    }else{
        # AQUI VA TODA LA OPERACION DE CORRELACION Y AGREGARLA AL VECTOR DE SALIDA
        contador<-contador+1
        cr[contador]<-cor(sulfato,nitrato)
    }

  }
  cr
}
