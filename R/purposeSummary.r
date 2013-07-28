#' Summarizes loan purposes, by default rates.
#' @param lending_club_stats data.frame of lending club stats
#' @return a summary of charged_off behavior by loan purpose
#' @export
#' @examples
#' data(LoanStatsNew)
#' dat <- prepare(LoanStatsNew)
#' purpose_summary <- purposeSummary(dat)
purposeSummary <- function(lending_club_stats) {

  lending_club_stats <- lending_club_stats[!is.na(lending_club_stats$funded_amnt),]

  ddply(
    lending_club_stats,
    .(purpose, grade),
    .fun = function(d) {
      data.frame(
        percent_charged_off=nrow(d[d$charged_off,])/nrow(d),
        number_of_loans=nrow(d)
      )
    }
  )

}

