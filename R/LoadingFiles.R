

# download NL places
download.file(url = 'http://www.mapcruzin.com/download-shapefile/netherlands-places-shape.zip', destfile = 'data/NLplaces.zip', method = 'auto', )
unzip('data/NLplaces.zip', exdir = 'data')

# download railways
download.file(url = 'http://www.mapcruzin.com/download-shapefile/netherlands-railways-shape.zip', destfile = 'data/railways.zip', method = 'auto', )
unzip('data/railways.zip', exdir = 'data')






