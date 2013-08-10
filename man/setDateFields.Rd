\name{setDateFields}
\alias{setDateFields}
\title{Sets all of the Lending Club date fields to R Dates.}
\usage{
  setDateFields(lending_club_stats, format = "\%Y-\%m-\%d")
}
\arguments{
  \item{lending_club_stats}{data.frame of Lending Club loan
  stats}

  \item{format}{the date format to use. See as.Date}
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

