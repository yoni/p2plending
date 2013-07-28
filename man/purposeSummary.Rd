\name{purposeSummary}
\alias{purposeSummary}
\title{Summarizes loan purposes, by default rates.}
\usage{
  purposeSummary(lending_club_stats)
}
\arguments{
  \item{lending_club_stats}{data.frame of lending club
  stats}
}
\value{
  a summary of charged_off behavior by loan purpose
}
\description{
  Summarizes loan purposes, by default rates.
}
\examples{
data(LoanStatsNew)
dat <- prepare(LoanStatsNew)
purpose_summary <- purposeSummary(dat)
}

