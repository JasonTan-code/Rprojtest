#' Title
#'
#' @return
#' @export

Calc_Count_Mean <- function(col_row){
   count <- read.csv("./extdata/count.csv", row.names = 1)
   if (col_row == "col"){
     return(colMeans(count))
   } else if (col_row == "row"){
     return(rowMeans(count))
   } else {
     return (NULL)
   }
}
