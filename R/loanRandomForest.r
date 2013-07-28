#' Generates a random forest predicting loan charge offs.
#' @param lending_club_stats data.frame of the lending club stats
#' @return randomForest results
#' @importFrom randomForest randomForest
#' @export
#' @examples
#' data(LoanStatsNew)
#' dat <- prepare(LoanStatsNew)
#' loanRandomForest(dat)
loanRandomForest <- function(lending_club_stats) {
  randomForest(
    formula = charged_off ~ purpose + grade + term,
    data=lending_club_stats,
    subset = !is.na(lending_club_stats$funded_amnt),
    importance=TRUE
  )
}
