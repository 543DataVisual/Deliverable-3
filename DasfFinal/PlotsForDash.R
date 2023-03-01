
----------------------------------
  Deliverable 3:
# clean memory
rm(list = ls())
library(sf)
#loading in shape file
maplink = 'https://github.com/543DataVisual/Deliverable-3/raw/main/ESDIST.geojson'
mapWorld=read_sf(maplink)

mapWorld_indexes=read_sf("mapWorld_indexes.geojson")
#creating a map layer
baseMap = ggplot(data=mapWorld) + theme_classic() + 
  geom_sf(fill='grey', 
          color=NA)

#layering the data layer on top of the map layer
numericMap = baseMap + geom_sf(data=mapWorld_indexes,
                               aes(fill=total_non_english), 
                               color=NA)

#adding labels to map
labels = labs(title = "Non English Speakers by Elementary School Boundary", 
              subtitle = "The City of Bellevue, Washington USA")
graph = numericMap +
  labels
Legend_title ="Total Non English Speakers 
(grey indicates missing values)"

graph + scale_fill_gradient(name = Legend_title) +
  theme_minimal()
------------------------------------
  Deliverable 2:
  
------------------------------------
  Deliverable 1:
  
  