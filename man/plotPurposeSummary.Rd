\name{plotPurposeSummary}
\alias{plotPurposeSummary}
\title{Plots a summary of the loan purposes.}
\usage{
  plotPurposeSummary(lending_club_stats)
}
\arguments{
  \item{lending_club_stats}{data.frame of the lending club
  stats}
}
\value{
  ggplot plot of a summary of loan performance by purpose
}
\description{
  Plots a summary of the loan purposes.
}
\examples{
data(LoanStatsNew)
dat <- setDateFields(LoanStatsNew)
plotPurposeSummary(dat)
}

