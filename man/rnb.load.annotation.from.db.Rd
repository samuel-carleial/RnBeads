% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotations.R
\name{rnb.load.annotation.from.db}
\alias{rnb.load.annotation.from.db}
\title{rnb.load.annotation.from.db}
\usage{
rnb.load.annotation.from.db(types, assembly = "hg19")
}
\arguments{
\item{types}{One-element \code{character} vector giving the name of the region annotation. If this annotation
is already available, it will be overwritten for the current session.}

\item{assembly}{Genome assembly of interest. See \code{\link{rnb.get.assemblies}} for the list of supported genomes.}
}
\value{
Invisibly, \code{TRUE} if the annotation was loaded successfully; an error message if the objects in the
        given file do not encode an annotation.
}
\description{
Loads a previously region annotation from the RnBeads resource database
}
\details{
This function checks whether a region annotation is present in the RnBeads resources,
downloads the corresponding annotation file(s) from the and then runs \code{\link{rnb.load.annotation}}
to import the annotation.
}
\examples{
\donttest{
rnb.region.types() 
rnb.load.annotation.from.db(c("tiling1kb", "dynamicMethZiller2013"))
rnb.region.types()
}

}
\seealso{
\code{\link{rnb.load.annotation}} for loading annotation from a binary file
}
\author{
Fabian Mueller
}
