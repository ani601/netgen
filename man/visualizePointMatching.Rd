% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualizePointMatching.R
\name{visualizePointMatching}
\alias{visualizePointMatching}
\title{Visualize point matching.}
\usage{
visualizePointMatching(x, y, point.matching, highlight.longest = 0L)
}
\arguments{
\item{x}{[Network | matrix]\cr
Network or (n x 2) matrix.}

\item{y}{[Network | matrix]\cr
Network or (n x 2) matrix.}

\item{point.matching}{[\code{matrix}]\cr
Point matching received via \code{getOptimalPointMatching} for example.}

\item{highlight.longest}{[\code{integer(1)}]\cr
Number of longest distances which should be particularly highlighted.
Default is \code{0}.}
}
\value{
[\code{\link[ggplot2]{ggplot}}]
}
\description{
Visualize a point matchings. Points and lines between the matched points
are drawn in order to visualize the assignment.
}
\examples{
# point matching on networks
x = generateRandomNetwork(n.points = 20L, upper = 100)
y = generateClusteredNetwork(n.points = 20L, n.cluster = 2L, upper = 100)
\dontrun{
pm = getOptimalPointMatching(x$coordinates, y$coordinates)
print(visualizePointMatching(x, y, pm, highlight.longest = 2L))
}

# point matching on point clouds
x = matrix(runif(20L), 2L)
y = matrix(runif(20L), 2L)
\dontrun{
pm = getOptimalPointMatching(x, y)
print(visualizePointMatching(x, y, pm))
}
}
\seealso{
\code{\link{getOptimalPointMatching}}, \code{\link{morphInstances}},
  \code{\link{visualizeMorphing}}
}

