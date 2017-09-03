#' @title KPK Province data from Pakistan Population Census 2017 
#' @name   PakPC2017KPK
#' @docType data
#' @keywords datasets
#' @usage data(PakPC2017KPK)
#' @description \code{PakPC2017KPK} KPK Province data from Pakistan Population Census 2017.
#' @format A \code{data.table} and  \code{data.frame} with 50 obs. of  12 variables.
#' @details
#'        \itemize{
#'        \item Province Province of Pakistan
#'        \item Division Division of KPK Province of Pakitan
#'        \item District District of KPK Province of Pakitan
#'        \item ResStatus Residental Status
#'        \item Households No. of Households
#'        \item Male Male Population
#'        \item Female Female Population
#'        \item Transgender Transgender Population
#'        \item Pop2017 Total Population in 2017
#'        \item Pop1998 Total Population in 1998
#'        \item SexRatio2017 Sex Ration accoring to Pakistan Population Census 2017
#'        \item GrowthRate 1998-2017 Average Annual Growth Rate
#'        }
#' @author Muhammad Yaseen (\email{myaseen208@@gmail.com})
#' @references \enumerate{
#' \item Pakistan Population Census 2017 (\url{http://www.pbscensus.gov.pk/}).
#'  }
#' @seealso 
#'  , \code{\link{PakPC2017Balochistan}}
#'    \code{\link{PakPC2017City10}}
#'  , \code{\link{PakPC2017FATA}}
#'  , \code{\link{PakPC2017Islamabad}}
#'  , \code{\link{PakPC2017Pak}}
#'  , \code{\link{PakPC2017Pakistan}}
#'  , \code{\link{PakPC2017Punjab}}
#'  , \code{\link{PakPC2017Sindh}}
#' @importFrom data.table data.table
#' @examples
#' data(PakPC2017KPK)
#' library(data.table)
#' PakPC2017Res <- 
#'           c(
#'               "Households", "Male", "Female", "Transgender"
#'             , "Pop2017", "Pop1998", "SexRatio2017", "GrowthRate"
#'             )
#' 
#' 
#' PakPC2017KPK[
#'        , j        = lapply(.SD, sum, na.rm = TRUE) 
#'        , by       = .(Division, District)
#'        , .SDcols  = PakPC2017Res
#'        ][order(Division, District)]
#' 
NULL