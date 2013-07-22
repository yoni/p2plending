\name{readLendingClubStats}
\alias{readLendingClubStats}
\title{Loads Lending Club Stats into a data.frame.}
\usage{
  readLendingClubStats(path)
}
\arguments{
  \item{path}{the path to the LendingClub stats.}
}
\value{
  data.frame of Lending Club Stats.
}
\description{
  Loads Lending Club Stats into a data.frame.
}
\examples{
lcstats <- readLendingClubStats(system.file('sample/LoanStatsNew.csv', package='p2plending'))
message(nrow(lcstats))
stopifnot(nrow(lcstats) == 5)
}

