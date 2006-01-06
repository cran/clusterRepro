\name{clusterRepro-internal}
\alias{permuteCol}
\title{clusterRepro Internal Functions}
\description{
  This function randomly permutes the entries of each of the matrix's
  columns independently of the other columns. 
}
\usage{
permuteCol(x)
}
\arguments{
  \item{x}{matrix of at least one row and one column}
}
\value{
  The matrix of permuted columns is returned.
}
\author{
  Trevor Hastie
}
\details{
  This function is not to be be called by the user.
}
\keyword{internal}
