\name{prepare}
\alias{prepare}
\title{Prepares lending club stats for analysis.}
\usage{
  prepare(lending_club_stats,
    date_field_format = "\%Y-\%m-\%d")
}
\arguments{
  \item{lending_club_stats}{data.frame of lending club
  stats}

  \item{date_field_format}{format of the date fields. This
  differs between the personal notes and the LC stats}
}
\value{
  lending_club_stats with types set and derived fields
  calculated
}
\description{
  Prepares lending club stats for analysis.
}
\examples{
data(LoanStatsNew)
dat <- prepare(LoanStatsNew)
stopifnot('charged_off' \%in\% names(dat))
}

