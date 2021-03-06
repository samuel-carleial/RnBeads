% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agePrediction.R
\name{run.cross.validation}
\alias{run.cross.validation}
\title{run.cross.validation}
\usage{
run.cross.validation(rnbSet, report, alpha = 0.8)
}
\arguments{
\item{rnbSet}{a \code{RnBSet} object containing the methylation info and ages on which
the new predictor should be trained}

\item{report}{report to which the table should be added}

\item{alpha}{alpha parameter used in the elastic net regression}
}
\value{
modified report object
}
\description{
This function performs 10-fold cross validation to estimate the performance of a
newly trained predictor. If \code{parallel.isEnabled()}, the function perfoms cross
validation in parallel. The function adds a table to the specified \code{report} containing
the result of the 10-fold cross validation.
}
\author{
Michael Scherer
}
