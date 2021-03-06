% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sex.R
\name{rnb.execute.gender.prediction}
\alias{rnb.execute.gender.prediction}
\title{rnb.execute.gender.prediction}
\usage{
rnb.execute.gender.prediction(rnb.set)
}
\arguments{
\item{rnb.set}{Methylation dataset after running the sex prediction step, as an object of type
\code{\linkS4class{RnBSet}}.}
}
\value{
The possibly modified dataset. If sex could be predicted, the sample annotation table is enriched with
}
\description{
Deprecated function name, now called \code{\link{rnb.execute.sex.prediction}}.
}
\seealso{
rnb.execute.sex.prediction
}
