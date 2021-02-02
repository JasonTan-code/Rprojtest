#' Title
#'
#' @return
#' @export

Calc_Count_Mean <- function(col_row){
   count <- read.csv(system.file("extdata","count.csv",package = "cats"), row.names = 1)
   if (col_row == "col"){
     return(colMeans(count))
   } else if (col_row == "row"){
     return(rowMeans(count))
   } else {
     return (NULL)
   }
}




#' Title
#'
#' @param n a number of rows
#' @export
Modify_Count <- function(n){
   count <- read.csv(system.file("extdata","count.csv",package = "cats"), row.names = 1)
   count = count[1:n,]
   write.csv(count, system.file("extdata","count.csv",package = "cats"), row.names = T)
   print("Successfully modified")
}






