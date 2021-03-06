% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hs_PCA.R
\name{hs_PCA}
\alias{hs_PCA}
\title{Run PCA on a hyperspec object}
\usage{
hs_PCA(hs.x, ...)
}
\arguments{
\item{hs.x}{hyperSpec object}

\item{...}{Parameters to pass on to prcomp().}
}
\description{
Run PCA on a hyperspec object
}
\examples{
## Short example

# Load hyperSpec object
data("hs_example")

# Convert to MassSpectrum object
hs.x.proc <- hs_preprocess(hs_example)

df.PCA <- hs_PCA(hs.x.proc)
}
