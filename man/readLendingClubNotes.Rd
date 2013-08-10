\name{readLendingClubNotes}
\alias{readLendingClubNotes}
\title{Loads Lending Club Notes - retrieved from the Lending CLub "Download All" button - into a data.frame.}
\usage{
  readLendingClubNotes(path)
}
\arguments{
  \item{path}{the path to the LendingClub stats.}
}
\value{
  data.frame of the notes
}
\description{
  Loads Lending Club Notes - retrieved from the Lending
  CLub "Download All" button - into a data.frame.
}
\examples{
notes <- readLendingClubNotes(system.file('sample/notes.csv', package='p2plending'))
}

