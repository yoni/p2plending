#' Loads Lending Club Stats into a data.frame.
#' @param path the path to the LendingClub stats.
#' @return data.frame of Lending Club Stats.
#' @importFrom logging logdebug
#' @export
readLendingClubStats <- function(path) {

  lending_club_stats <- read.csv(path, na.strings = c('null'), skip=1)
  
  # Convert all Lending Club date fields into an R Date instance
  date_fields <- grep('_d$', names(lending_club_stats), value=TRUE)

  for(field in date_fields) {
    loginfo("Converting field [%s] to Date.", field)
    lending_club_stats[[field]] <- as.Date(lending_club_stats[[field]])
  }
  
  lending_club_stats

}

