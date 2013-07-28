#' Prepares lending club stats for analysis.
#' @param lending_club_stats data.frame of lending club stats
#' @return lending_club_stats with types set and derived fields calculated
#' @export
#' @examples
#' data(LoanStatsNew)
#' dat <- prepare(LoanStatsNew)
#' stopifnot('charged_off' %in% names(dat))
prepare <- function(lending_club_stats) {

  dat <- setDateFields(lending_club_stats)
  dat$charged_off <- dat$loan_status == "Charged Off"

  dat

}
