% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mq_iter_plot.R
\name{iterationsplot}
\alias{iterationsplot}
\title{Plot the effect of iterations on baseline correction}
\usage{
iterationsplot(mdq, itervect, method = "SNIP", plotlegend = TRUE, ...)
}
\arguments{
\item{mdq}{a MALDIquant::MassSpectrum (trimmed to relevant wavelengths)}

\item{itervect}{a numeric vector of different iteration options (max. 11 values)}

\item{method}{one of "SNIP", "TopHat", "ConvexHull" or "median" for baseline
estimation by MALDIquant::estimateBaseline (see ?MALDIquant::estimateBaseline).
defaults to "SNIP".}

\item{plotlegend}{a boolean indicating wether or not to include a legend in lower left corner
(defaults to TRUE)}

\item{...}{additional parameters passed on to plot or lines}
}
\description{
This function plots baseline correction for several iterations on the
spectral data to determine the optimal number of iterations
}
