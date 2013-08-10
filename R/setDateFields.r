#' Sets all of the Lending Club date fields to R Dates.
#' @param lending_club_stats data.frame of Lending Club loan stats
#' @param format the date format to use. See as.Date
#' @return data.frame of loan stats with all date fields set to R Date
#' @importFrom logging logdebug
#' @export
#' @examples
#' data(LoanStatsNew)
#' setDateFields(LoanStatsNew)
setDateFields <- function(lending_club_stats, format="%Y-%m-%d") {

  # Convert all Lending Club date fields into an R Date instance
  # Most of them adhere to a '_d' naming convention, but some don't
  date_fields <- grep('_d$', names(lending_club_stats), value=TRUE)
  date_fields <- c(date_fields, 'earliest_cr_line')

  for(field in date_fields) {
    tryCatch({
        lending_club_stats[[field]] <- as.Date(lending_club_stats[[field]], format=format)
        logdebug("Converted field [%s] to Date.", field)
      },
      error = function(e) {
        logdebug("Couldn't convert field [%s] to Date.", field)
      }
    )
  }

  lending_club_stats

}
