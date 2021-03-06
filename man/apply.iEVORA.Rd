% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differentialVariability.R
\name{apply.iEVORA}
\alias{apply.iEVORA}
\title{apply.iEVORA}
\usage{
apply.iEVORA(meth.matrix, inds.g1, inds.g2)
}
\arguments{
\item{meth.matrix}{Matrix containing the methylation information used to calculate differentially variable sites 
between the two groups}

\item{inds.g1}{Indices in the phenotypic table corresponding to the first group.}

\item{inds.g2}{Indices in the phenotypic table corresponding to the second group.}
}
\value{
Q-values as the result of applying the iEVORA method and then correct for multiple testing.
}
\description{
This routine applies the iEVORA method created by Teschendorff et.al. to the supplied methylation matrix in a similar way
as the diffVar method.
}
\author{
Michael Scherer
}
