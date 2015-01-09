#Transform coordinate system dataset to RD new
railwaysRD <- spTransform(x = railways, CRS("+init=epsg:28992 +towgs84=565.237,50.0087,465.658,-0.406857,0.350733,-1.87035,4.0812"))

placesRD <- spTransform(x = places, CRS("+init=epsg:28992 +towgs84=565.237,50.0087,465.658,-0.406857,0.350733,-1.87035,4.0812"))

# select industrial railways
IndusRail <- railwaysRD[railways$type  == 'industrial',]
IndusRail$type
proj4string(placesRD)

# create buffer around industrial railway
buffertje <- gBuffer(IndusRail,width = 1000,byid = T) 

# find places that intersects 1000m buffer around railway
CityIntersect <- gIntersection(placesRD, buffertje, byid = TRUE)
i <- gIntersects(placesRD, buffertje, byid=TRUE)
city <- data.frame(placesRD)[i]
cityname<- city[2]


population <- city[4]

