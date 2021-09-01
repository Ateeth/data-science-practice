library(jsonlite)
library(httr)



capitals <- c("Amaravati","Itanagar","Dispur","Patna","Raipur","Panaji","Gandhinagar","Chandigarh","Shimla","Ranchi","Bengaluru","Thiruvananthapuram","Bhopal","Mumbai","Imphal","Shillong","Kohima","Bhubaneshwar","Jaipur","Chennai","Gangtok","Hyderabad","Lucknow","Kolkata");
capitals1 <- c("Bhopal","Mumbai","Imphal","Shillong","Kohima","Bhubaneshwar","Jaipur","Chennai","Gangtok","Hyderabad","Lucknow","Kolkata");
for (city in capitals){
  url = paste0("http://api.weatherstack.com/current?access_key=4ba77a8c0a0ea27c825c8b52309a3c30&query=",city)
  data <- fromJSON(url)
  write.table(data,file="C:/Users/ateet/OneDrive/Desktop/dataset_19BDS0113.csv",sep=",",append=TRUE,row.names=FALSE,col.names=FALSE)
}
