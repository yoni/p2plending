#' Plots a summary of the loan purposes.
#' @param lending_club_stats data.frame of the lending club stats
#' @return ggplot plot of a summary of loan performance by purpose
#' @export
#' @examples
#' data(LoanStatsNew)
#' dat <- prepare(LoanStatsNew)
#' plotPurposeSummary(dat)
plotPurposeSummary <- function(lending_club_stats) {
  purpose_summary <- purposeSummary(lending_club_stats)
  ggplot(
    purpose_summary,
    aes(
      percent_charged_off,
      reorder(purpose, percent_charged_off),
      size=number_of_loans
    )
  ) + geom_point() + facet_grid(grade~.)
}

