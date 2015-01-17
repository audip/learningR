library(xlsx)
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileUrl, destfile="./data/cameras.xlsx", method="curl")
downloadedDate <- date()

cameraData <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, header=TRUE)
head(cameraData)

colindex <- 2:3
rowindex <- 1:4
cameraDatasubset <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, colIndex = colindex, rowIndex=rowindex, header = TRUE)
cameraDatasubset