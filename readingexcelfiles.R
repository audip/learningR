library(xlsx)
if(!file.exists("data"))
{
  dir.create("data")
  fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
  download.file(fileUrl, destfile="./data/cameras.xlsx", method="curl")
  downloadedDate <- date()
}

cameraData <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, header=TRUE)
head(cameraData)

colIndex <- 2:3
rowIndex <- 1:4
cameraDatasubset<- read.xlsx("./data/cameras.xlsx", sheetIndex=1, colIndex = colIndex, rowIndex = rowIndex)
cameraDatasubset