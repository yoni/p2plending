\name{setDateFields}
\alias{setDateFields}
\title{Sets all of the Lending Club date fields to R Dates.}
\usage{
  setDateFields(lending_club_stats)
}
\arguments{
  \item{lending_club_stats}{data.frame of Lending Club loan
  stats}
}
\value{
  data.frame of loan stats with all date fields set to R
  Date
}
\description{
  Sets all of the Lending Club date fields to R Dates.
}
\examples{
data(LoanStatsNew)
setDateFields(LoanStatsNew)
}

