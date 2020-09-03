# Sample of functions with Air-Pollution data  
Here are three functions ti oractice R languaje with air pollution 
data from 332 monitors in USA


## Pollutantmean Function

This is an function to calculate the mean of sulfate or nitrate
across a specified list of monitors usning air pollution database
**use**
This function has 3 arguments
  + Directory
  Here, user put the path of the csv file
  + Pullulant
  Argument to specify what pullulant use, nitrate or sulfate
  + Id
  ID of the monitor to use, default value is cero

This function returns the mean of all data of all csv especifies in ID argument


## Complete Function

Function that show a dataframe with the id of the monitor and
the number of complete cases( sulfate and nitrate exist in the same date)
for each input df
This function has 2 arguments
  + Directory:
  Path to file
  + Id :
  ID of the monitor to use
 
The function returns a dataframe with 2 columns
  + Id :
  ID of the monitor information
  + nobs :
  Number of complete cases of the current monitor
  
  
## Corr Function

This function calculates the correlation between sulfate and nitrate
in air pollution.
The function has 2 arguments
  + Directory :
  Path of files to use
  + Threshold :
  Value to indicate the number of completely observer observations
  required to compute the correlation between nitrate and sulfate
  
The funtion return a vector with all correlation of all
files
 
