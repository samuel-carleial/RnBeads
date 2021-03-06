% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotations.R
\name{rnb.get.mapping}
\alias{rnb.get.mapping}
\title{rnb.get.mapping}
\usage{
rnb.get.mapping(region.type, target.type, assembly = "hg19")
}
\arguments{
\item{region.type}{Region type. The built-in types are \code{"cpgislands"}, \code{"genes"}, \code{"promoters"} and
\code{"tiling"}.}

\item{target.type}{Target type for sites.}

\item{assembly}{Genome assembly of interest. See \code{\link{rnb.get.assemblies}} for the list of supported
genomes.}
}
\value{
\code{list} of mapping structures, one per chromosome. Every mapping structure is an object of type
        \code{\link{IRanges}} and stores the range of indices of all sites contained in the respective region.
        Regions that do not contain sites are left out of the mapping.
}
\description{
Gets the mapping information used for a region type. These are structures used to map regions to the genomic loci (or
Infinium probes) that target them.
}
\examples{
\donttest{
promoters2probes <- rnb.get.mapping("promoters", "probes450")
promoters2probes[["chr21"]]
}
}
\author{
Yassen Assenov
}
