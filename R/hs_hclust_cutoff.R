#' Plot clusters on hclust object at given height.
#'
#' An easy exploratory way to draw clusters at a given height on a dendrogram.
#'
#' @param dend a hclust object
#' @param h cutoff distance for the clusters to be plotted (defaults to 0.75)
#' @param bordercol the color of the border
#' @param ... other parameters passed on to plot.hclust
#' @return a matrix with the assigned clusters for each leaf (in the case of Raman data each cell)
#' @importFrom dendextend is.hclust cutree
#' @importFrom stats rect.hclust
#' @examples
#' # Load hyperSpec object
#' data("hs_example")
#'
#' # Convert to MassSpectrum object
#' hs.x.proc <- hs_preprocess(hs_example)
#'
#' # cluster cells
#' hclust_obj <- hs_hclust(hs.x.proc, dist_method = "bray",
#' clust_method = "hclust")
#'
#' # Draw cutoff
#' hs_hclust_cutoff(hclust_obj)
#' @export

hs_hclust_cutoff <- function(dend,
  h = 0.75,
  bordercol = "red",
  ...) {
  par(mfrow = c(1, 1))
  if (!is.hclust(dend)) {
    stop("dend is not a valid hclust object")
  }
  clusters <- as.matrix(cutree(dend, h = h))
  plot(dend, ...)
  rect.hclust(dend, k = max(clusters), border = bordercol)
  return(clusters)
}
