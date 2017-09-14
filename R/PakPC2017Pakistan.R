#' @title Pakistan data from Pakistan Population Census 2017 
#' @name   PakPC2017Pakistan
#' @docType data
#' @keywords datasets
#' @usage data(PakPC2017Pakistan)
#' @description \code{PakPC2017Pakistan} Pakistan data from Pakistan Population Census 2017.
#' @format A \code{data.table} and  \code{data.frame} with 272 obs. of  12 variables.
#' \describe{
#'        \item{\code{Province}}{Province of Pakistan}
#'        \item{\code{Division}}{Division of Balochistan Province of Pakitan}
#'        \item{\code{District}}{District of Balochistan Province of Pakitan}
#'        \item{\code{ResStatus}}{Residental Status}
#'        \item{\code{Households}}{No. of Households}
#'        \item{\code{Male}}{Male Population}
#'        \item{\code{Female}}{Female Population}
#'        \item{\code{Transgender}}{Transgender Population}
#'        \item{\code{Pop2017}}{Total Population in 2017}
#'        \item{\code{Pop1998}}{Total Population in 1998}
#'        \item{\code{SexRatio2017}}{Sex Ration accoring to Pakistan Population Census 2017}
#'        \item{\code{GrowthRate}}{1998-2017 Average Annual Growth Rate}
#'        }
#'        
#' @author Muhammad Yaseen (\email{myaseen208@@gmail.com})
#' 
#' @references \enumerate{
#' \item Pakistan Population Census 2017 (\url{http://www.pbscensus.gov.pk/}).
#'  }
#'
#'  
#' @seealso 
#'   \code{\link{PakPC2017Balochistan}}
#'  ,  \code{\link{PakPC2017City10}}
#'  , \code{\link{PakPC2017FATA}}
#'  , \code{\link{PakPC2017Islamabad}}
#'  , \code{\link{PakPC2017KPK}}
#'  , \code{\link{PakPC2017Pak}}
#'  , \code{\link{PakPC2017Punjab}}
#'  , \code{\link{PakPC2017Sindh}}
#'  
#' @importFrom data.table data.table
#' 
#' @examples
#' data(PakPC2017Pakistan)
#' library(data.table)
#' PakPC2017Res <- 
#'  c("Households", "Male", "Female", "Transgender", "Pop2017", "Pop1998")
#' 
#' PakPC2017Pakistan[
#'        , j        = lapply(.SD, sum, na.rm = TRUE) 
#'        , by       = .(Division, District)
#'        , .SDcols  = PakPC2017Res
#'        ][order(Division, District)]
#' 
NULL