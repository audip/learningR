library(XML)
fileUrl <- "./data/Tags.xml"
doc <- xmlTreeParse(fileUrl, useInternal = TRUE)
RootNode <- xmlRoot(doc)
xmlName(RootNode)

library(jsonlite)
cameraJSON <- fromJSON("https://data.baltimorecity.gov/api/views/dz54-2aru/rows.json?accessType=DOWNLOAD");
names(cameraJSON)