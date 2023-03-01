
# clean memory
rm(list = ls())

#Installing packages
library(sf)
library(ggplot2)

#loading in shape file
maplink = 'https://github.com/543DataVisual/Deliverable-3/raw/main/ESDIST.geojson'
mapWorld=read_sf(maplink)

#loading in data file
location ='https://github.com/543DataVisual/Deliverable-3/raw/main/'
file ='cleanedtractsfiledeliverable3.2.csv'
datalink = paste0(location,file)

mydata = read.csv(datalink)

#aggregating the data to be organized by school district name with mean per capita income and total non English as the variables
deliverable3 = aggregate(data=mydata,cbind(per_cap_income,total_non_english)~NAME,mean)


#merging data file to map file by school district name
mapWorld_indexes = merge(mapWorld, 
                         deliverable3, 
                         by='NAME')
st_write(mapWorld_indexes,
         "mapWorld_indexes.geojson",
         delete_dsn = T)

