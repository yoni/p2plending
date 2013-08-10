#' Prepares lending club stats for analysis.
#' @param lending_club_stats data.frame of lending club stats
#' @param date_field_format format of the date fields. This differs between the personal notes and the LC stats
#' @return lending_club_stats with types set and derived fields calculated
#' @export
#' @examples
#' data(LoanStatsNew)
#' dat <- prepare(LoanStatsNew)
#' stopifnot('charged_off' %in% names(dat))
prepare <- function(lending_club_stats, date_field_format="%Y-%m-%d") {

  dat <- setDateFields(lending_club_stats, format=date_field_format)
  dat$charged_off <- dat$loan_status == "Charged Off"

  dat

}
