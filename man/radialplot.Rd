% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radialplot.R
\name{radialplot}
\alias{radialplot}
\alias{radialplot.ArAr}
\alias{radialplot.UPb}
\alias{radialplot.UThHe}
\alias{radialplot.default}
\alias{radialplot.fissiontracks}
\title{Visualise heteroscedastic data on a radial plot}
\usage{
radialplot(x, ...)

\method{radialplot}{default}(x, from = NA, to = NA, t0 = NA,
  transformation = "log", sigdig = 2, show.numbers = FALSE, pch = 21,
  bg = "white", k = 0, markers = NULL, ...)

\method{radialplot}{fissiontracks}(x, from = NA, to = NA, t0 = NA,
  transformation = "arcsin", sigdig = 2, show.numbers = FALSE, pch = 21,
  bg = "white", title = TRUE, markers = NULL, k = 0, exterr = TRUE,
  ...)

\method{radialplot}{UPb}(x, from = NA, to = NA, t0 = NA,
  transformation = "log", type = 4, cutoff.76 = 1100,
  cutoff.disc = c(-15, 5), show.numbers = FALSE, pch = 21, bg = "white",
  markers = NULL, k = 0, exterr = TRUE, ...)

\method{radialplot}{ArAr}(x, from = NA, to = NA, t0 = NA,
  transformation = "log", show.numbers = FALSE, pch = 21, bg = "white",
  markers = NULL, k = 0, exterr = TRUE, ...)

\method{radialplot}{UThHe}(x, from = NA, to = NA, t0 = NA,
  transformation = "log", show.numbers = FALSE, pch = 21, bg = "white",
  markers = NULL, k = 0, ...)
}
\arguments{
\item{x}{Either an nx2 matix of (transformed) values z and their
    standard errors s

OR

and object of class \code{fissiontracks}, \code{UThHe},
\code{ArAr}, or \code{UPb}}

\item{...}{additional arguments to the generic \code{points}
function}

\item{from}{minimum age limit of the radial scale}

\item{to}{maximum age limit of the radial scale}

\item{t0}{central value}

\item{transformation}{one of either \code{log}, \code{linear} or
(if \code{x} has class \code{fissiontracks})}

\item{sigdig}{the number of significant digits of the numerical
values reported in the title of the graphical output.}

\item{show.numbers}{boolean flag (\code{TRUE} to show grain
numbers)}

\item{pch}{plot character (default is a filled circle)}

\item{bg}{background colour of the plot character}

\item{k}{number of peaks to fit using the finite mixture models of
Galbraith and Green (1993). Setting \code{k='auto'}
automatically selects an optimal number of components based on
the Bayes Information Criterion (BIC). Setting \code{k='min'}
estimates the minimum value using a three parameter model
consisting of a Normal distribution truncated by a discrete
component.}

\item{markers}{vector of ages of radial marker lines to add to the
plot.}

\item{title}{add a title to the plot?}

\item{exterr}{propagate the external sources of uncertainty into
the mixture model errors?}

\item{type}{scalar indicating whether to plot the
\eqn{^{207}}Pb/\eqn{^{235}}U age (\code{type}=1), the
\eqn{^{206}}Pb/\eqn{^{238}}U age (\code{type}=2), the
\eqn{^{207}}Pb/\eqn{^{206}}Pb age (type=3), the
\eqn{^{207}}Pb/\eqn{^{206}}Pb-\eqn{^{206}}Pb/\eqn{^{238}}U age
(\code{type}=4), or the (Wetherill) concordia age
(\code{type}=5)}

\item{cutoff.76}{the age (in Ma) below which the
\eqn{^{206}}Pb/\eqn{^{238}}U and above which the
\eqn{^{207}}Pb/\eqn{^{206}}Pb age is used. This parameter is
only used if \code{type=4}.}

\item{cutoff.disc}{two element vector with the maximum and minimum
percentage discordance allowed between the
\eqn{^{207}}Pb/\eqn{^{235}}U and \eqn{^{206}}Pb/\eqn{^{238}}U
age (if \eqn{^{206}}Pb/\eqn{^{238}}U < \code{cutoff.76}) or
between the \eqn{^{206}}Pb/\eqn{^{238}}U and
\eqn{^{207}}Pb/\eqn{^{206}}Pb age (if
\eqn{^{206}}Pb/\eqn{^{238}}U > \code{cutoff.76}).  Set
\code{cutoff.disc=NA} if you do not want to use this filter.}
}
\description{
Implementation of a graphical device developed by Rex Galbraith to
display several estimates of the same quantity that have different
standard errors.
}
\examples{
data(examples)
radialplot(examples$FT1)
}
\references{
Galbraith, R.F., 1990. The radial plot: graphical
    assessment of spread in ages. International Journal of
    Radiation Applications and Instrumentation. Part D. Nuclear
    Tracks and Radiation Measurements, 17(3), pp.207-214.

Galbraith, R.F. and Laslett, G.M., 1993. Statistical models for
mixed fission track ages. Nuclear tracks and radiation
measurements, 21(4), pp.459-470.
}

