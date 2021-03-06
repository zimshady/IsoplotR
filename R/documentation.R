#' Example datasets for testing \code{IsoplotR}
#'
#' U-Pb and detrital zircon datasets
#'
#' \code{examples} and 11-item list containing:
#'
#' \code{UPb}: an object of class \code{UPb} containing a high
#' precision U-Pb dataset packaged with Ken Ludwig's \code{Isoplot}
#' program.
#'
#' \code{DZ}: an object of class \code{detrital} containing a detrital
#' zircon U-Pb dataset from Namibia.
#'
#' \code{ArAr}: an object of class \code{ArAr} containing a
#' \eqn{^{40}Ar/^{39}Ar} spectrum of Skye basalt produced by Sarah
#' Sherlock (Open University).
#'
#' \code{UThHe}: an object of class \code{UThHe} containing a
#' U-Th-Sm-He dataset of Fish Lake apatite produced by Daniel Stockli
#' (UT Austin).
#'
#' \code{FT1}: an object of class \code{fissiontracks} containing a
#' synthetic external detector dataset.
#'
#' \code{FT2}: an object of class \code{fissiontracks} containing a
#' synthetic LA-ICP-MS-based fission track dataset using the zeta
#' calibration method.
#'
#' \code{FT3}: an object of class \code{fissiontracks} containing a
#' synthetic LA-ICP-MS-based fission track dataset using the absolute
#' dating approach.
#'
#' \code{average}: an object of class \code{other} containing the
#' \eqn{^{206}Pb/^{238}U}-ages and errors of dataset \code{UPb}.
#'
#' \code{KDE}: an object of class \code{'other'} containing the
#' \eqn{^{206}Pb/^{238}U}-ages (but not the errors) of dataset
#' \code{UPb}.
#'
#' \code{spectrum}: an object of class \code{'other'} containing the
#' \eqn{^{39}Ar} abundances, \eqn{^{40}Ar/^{39}Ar}-ages and errors of
#' dataset \code{ArAr}.
#'
#' \code{MountTom}: an object of class \code{'other'} containing a
#' dataset of dispersed zircon fission track ages from Brandon and
#' Vance (1992).
#' 
#' @name examples
#' @docType data
#' @examples
#' data(examples)
#' concordia(examples$UPb)
#' dev.new()
#' kde(examples$DZ)
#' @author Ken Ludwig and Pieter Vermeesch
#' @references
#' Brandon, M.T. and Vance, J.A., 1992. Tectonic evolution of the
#' Cenozoic Olympic subduction complex, Washington State, as deduced
#' from fission track ages for detrial zircons. American Journal of
#' Science, 292, pp.565-565.
#'
#' Galbraith, R. F. and Green, P. F., 1990: Estimating the component
#' ages in a finite mixture, Nuclear Tracks and Radiation
#' Measurements, 17, 197-206.
#' 
#' Ludwig, K. R. User's manual for Isoplot 3.00: a geochronological
#'     toolkit for Microsoft Excel. No. 4. Kenneth R. Ludwig, 2003.
#'
#' Vermeesch, Pieter, and Eduardo
#' Garzanti. "Making geological sense of 'Big Data' in sedimentary provenance analysis."
#' Chemical Geology 409 (2015): 20-27.
#'
#' Vermeesch, Pieter. "Three new ways to calculate average (U-Th)/He ages."
#' Chemical Geology 249.3 (2008): 339-347.
NULL
