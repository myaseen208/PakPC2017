#' @title Pakistan Tehsil data from Pakistan Population Census 2017
#' @name   PakPC2017Tehsil
#' @docType data
#' @keywords datasets
#' @usage data(PakPC2017Tehsil)
#' @description \code{PakPC2017Tehsil} data of Pakistan population census 2017.
#' @format A \code{data.table} and  \code{data.frame} with 543 observations of  06 variables.
#' \describe{
#'        \item{\code{Province}}{Provinces of Pakistan}
#'        \item{\code{Division}}{Divisions of Pakistan}
#'        \item{\code{District}}{Districts of Pakistan}
#'        \item{\code{Tehsil}}{Tehsils of Pakistan}
#'        \item{\code{Pop1998}}{Population of census 1998}
#'        \item{\code{Pop2017}}{Population of census 2017}
#'        }
#'
#' @author Muhammad Yaseen (\email{myaseen208@gmail.com})
#'
#' @references \enumerate{
#' \item Pakistan Bureau of Statistics, Pakistan Population Census 2017 (\url{http://www.pbscensus.gov.pk/}).
#'  }
#'
#' @seealso
#'    \code{\link{PakPC2017Balochistan}}
#'  , \code{\link{PakPC2017City10}}
#'  , \code{\link{PakPC2017FATA}}
#'  , \code{\link{PakPC2017Islamabad}}
#'  , \code{\link{PakPC2017KPK}}
#'  , \code{\link{PakPC2017Pak}}
#'  , \code{\link{PakPC2017Pakistan}}
#'  , \code{\link{PakPC2017Punjab}}
#'  , \code{\link{PakPC2017Sindh}}
#'
#' @importFrom dplyr group_by summarise
#' @importFrom magrittr %>%
#'
#' @examples
#' library(PakPC2017)
#' library(dplyr)
#' library(magrittr)
#' data("PakPC2017Tehsil")
#'
#' PakPC2017Tehsil %>%
#'   group_by(Province, Division, District) %>%
#'   summarise(
#'     Pop1998 = sum(Pop1998, na.rm = TRUE)
#'   , Pop2017 = sum(Pop2017, na.rm = TRUE))
#'
#'  PakPC2017Tehsil %>%
#'   filter(District == "Faisalabad")
NULL
