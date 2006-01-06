\name{IGP.clusterRepro}
\alias{IGP.clusterRepro}
\title{In-group proportion calculation}
\description{
  This function classifies gene expression (microarray) data using centroids and
  calculates the in-group proportions of the resulting groups.
}
\usage{
IGP.clusterRepro(Data, Centroids)
}
\arguments{
  \item{Data}{The matrix of gene expression data with annotated rows.  For gene clusters, the
    labeled rows are samples and the columns are genes.  For sample clusters,
    the labeled rows are genes and the columns are samples.} 
  \item{Centroids}{The matrix of centroids with annotated rows.  The
    labeled rows are either genes (for gene clusters) or samples (for
    sample clusters) and the columns are the centroids.}
}
\details{
  The Pearson's centered correlation coefficient between each datum and
  each centroid is calculated.  The datum is then classified to the
  group whose centroid had the highest correlation with the datum.  The
  in-group proportion is defined to be the proportion of data in a group
  whose nearest neighbors (Pearson's centered correlation) are also
  classified to the same group.
}
\value{
  \item{Class}{The data classification made using the centroids}
  \item{IGP}{The in-group proportions for the groups found in the data}
  \item{Size}{The number of data classified to each of the groups}
}
\author{
  Amy Kapp and Robert Tibshirani
}
\references{
  Amy Kapp and Robert Tibshirani.  Are clusters in one dataset present
  in another dataset?  To be published.
}
\examples{
### Make centroid matrix with annotated rows
C <- matrix(rnorm(30), 10)
rownames(C) <- letters[1:nrow(C)]

### Make data matrix with annotated rows
D <- matrix(rnorm(100), 10)
rownames(D) <- letters[1:nrow(C)]

### Classify data and calculate in-group proportions
Result <- IGP.clusterRepro(D, C)

### If the number of rows in the centroid matrix does not match the
### number of rows in the data matrix and the row labels are unique, this
### function will only use the rows that the two matrices have in common.
D <- matrix(rnorm(200), 20)
rownames(D) <- letters[(nrow(D)+6):7]
Result <- IGP.clusterRepro(D, C)

}
\keyword{univar}