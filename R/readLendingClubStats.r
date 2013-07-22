#' Loads Lending Club Stats into a data.frame.
#'
#' Note that this discards loand which do not meet the credit policy.
#' @param path the path to the LendingClub stats.
#' @return data.frame of Lending Club Stats.
#' @importFrom logging logdebug
#' @export
#' @examples
#' lcstats <- readLendingClubStats(system.file('sample/LoanStatsNew.csv', package='p2plending'))
#' message(nrow(lcstats))
#' stopifnot(nrow(lcstats) == 5)
readLendingClubStats <- function(path) {


  loginfo("Reading raw Lending Club CSV.")
  lending_club_stats <- readLines(path)

  # The file has two parts, the second of which includes only loans which
  # do not meet the credit policy (whatever that means). We only want the first part.
  delimiter_rows <- grep('Loans that do not meet the current credit policy', lending_club_stats)
  # header + first row + two empty rows + off-by-one
  ROWS_TO_IGNORE <- 5
  number_of_rows <- delimiter_rows[1] - ROWS_TO_IGNORE

  loginfo("Loading [%s] rows", number_of_rows)
  lending_club_stats <- read.csv(path, na.strings = c('null'), skip=1, nrows=number_of_rows)
  
  lending_club_stats <- setDateFields(lending_club_stats)
  
  lending_club_stats

}

