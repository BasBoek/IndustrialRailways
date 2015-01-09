# Team Bastei
# January 9, 2015

library(sp)
library(maptools)

source('R/LoadingFiles.R')

LoadingFiles('http://www.mapcruzin.com/download-shapefile/netherlands-railways-shape.zip',
             'http://www.mapcruzin.com/download-shapefile/netherlands-places-shape.zip')
             
# making variables out of downloaded data
places <- readShapeSpatial('data/places.shp')
railways <- readShapeSpatial('data/railways.shp')