#' @title Pakistan Population data from Pakistan Population Census 2017
#' @name   PakPop2017
#' @docType data
#' @keywords datasets
#' @usage data(PakPop2017)
#' @description \code{PakPop2017} data of Pakistan population census 2017.
#' @format A \code{data.table} and  \code{data.frame} with 543 observations of  06 variables.
#' \describe{
#'        \item{\code{Province}}{Provinces of Pakistan}
#'        \item{\code{Division}}{Divisions of Pakistan}
#'        \item{\code{District}}{Districts of Pakistan}
#'        \item{\code{Tehsil}}{Tehsils of Pakistan}
#'        \item{\code{QanungoHalqa}}{Qanungo Halqa of Pakistan}
#'        \item{\code{PatwarCircle}}{Patwar Circle of Pakistan}
#'        \item{\code{Village}}{Village Name}
#'        \item{\code{BlockCode}}{Block Code}
#'        \item{\code{Pop2017}}{Population of census 2017}
#'        \item{\code{HH2017}}{Total House Holds}
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
#'  , \code{\link{PakPC2017Tehsil}}
#'
#' @importFrom dplyr group_by summarise
#' @importFrom magrittr %>%
#'
#' @examples
#' library(PakPC2017)
#' library(dplyr)
#' library(magrittr)
#' data("PakPop2017")
#'
#' PakPop2017 %>%
#'   group_by(Province, Division, District) %>%
#'   summarise(Pop2017 = sum(Pop2017, na.rm = TRUE))
#'
#'  PakPop2017 %>%
#'   filter(District == "FAISALABAD DISTRICT")
NULL
