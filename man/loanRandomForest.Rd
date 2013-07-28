\name{loanRandomForest}
\alias{loanRandomForest}
\title{Generates a random forest predicting loan charge offs.}
\usage{
  loanRandomForest(lending_club_stats)
}
\arguments{
  \item{lending_club_stats}{data.frame of the lending club
  stats}
}
\value{
  randomForest results
}
\description{
  Generates a random forest predicting loan charge offs.
}
\examples{
data(LoanStatsNew)
dat <- prepare(LoanStatsNew)
loanRandomForest(dat)
}

