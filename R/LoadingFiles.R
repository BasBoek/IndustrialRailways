

# download NL places
LoadingFiles <- function(x,y){
  download.file(url = x, destfile = 'data/NLplaces.zip', method = 'auto', )
  unzip('data/NLplaces.zip', exdir = 'data')
  
  # download railways
  download.file(url = y, destfile = 'data/railways.zip', method = 'auto', )
  unzip('data/railways.zip', exdir = 'data')
}

