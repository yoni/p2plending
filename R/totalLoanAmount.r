#' Calculates the total number of loans.
#' @param lending_club_stats data.frame of lending club stats
#' @return the total amount of loans issues through Lending Club
#' @export
totalLoanAmount <- function(lending_club_stats) {
  sum(lending_club_stats$loan_amnt, na.rm=TRUE)
}

