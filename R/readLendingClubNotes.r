#' Loads Lending Club Notes - retrieved from the Lending CLub "Download All" button - into a data.frame.
#'
#' @param path the path to the LendingClub stats.
#' @return data.frame of the notes
#' @importFrom logging loginfo
#' @export
#' @examples
#' notes <- readLendingClubNotes(system.file('sample/notes.csv', package='p2plending'))
readLendingClubNotes <- function(path) {

  loginfo("Reading raw Lending Club Notes CSV.")
  lending_club_stats <- read.csv(path, na.strings = c('null'), row.names=NULL)
  
  lending_club_stats <- setDateFields(lending_club_stats, format = "%m/%d/%y")
  
  lending_club_stats

}

