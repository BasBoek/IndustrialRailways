# Team Bastei
# January 9, 2015

library(sp)
library(maptools)
library(rgdal)

source('R/LoadingFiles.R')

LoadingFiles('http://www.mapcruzin.com/download-shapefile/netherlands-railways-shape.zip',
             'http://www.mapcruzin.com/download-shapefile/netherlands-places-shape.zip')
             
# making variables out of downloaded data
places <- readOGR('data/places.shp', 'places')
railways <- readOGR('data/railways.shp', 'railways')

library(rgeos)

source('R/FindIndustrialPlace.R')
# plot buffer, plot (and name city)
plot(buffertje, main = cityname, col = " grey77")
plot(CityIntersect, pch = 19, cex = 3, col = "pink1", add = TRUE)


# name of the city = Utrecht
# population: 100.000
