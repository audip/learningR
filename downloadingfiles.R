if(!file.exists("data"))
{
  dir.create("data")
}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, dest="./data/cameras.csv", method="curl")
list.files("./data")
downloadedDate <- date()