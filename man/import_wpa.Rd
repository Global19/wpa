% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import_wpa.R
\name{import_wpa}
\alias{import_wpa}
\title{Import a Workplace Analytics Query}
\usage{
import_wpa(x, standardise = FALSE)
}
\arguments{
\item{x}{String containing the path to the Workplace Analytics query to be imported.
The input file must be a CSV file, and the file extension must be explicitly entered,
e.g. "/files/standard query.csv"}

\item{standardise}{logical. If TRUE, \code{import_wpa()} runs \code{standardise_pq()} to make a Collaboration
Assessment query's columns name standard and consistent with a Standard Person Query. Note that this
will have no effect if the query being imported is not a Ways of Working Assessment query. Defaults
as FALSE.}
}
\value{
A \code{tibble} is returned.
}
\description{
Import a Workplace Analytics Query from a local CSV File, with variable classifications optimised
for other 'wpa' functions.
}
\details{
\code{import_wpa()} uses \code{data.table::fread()} to import CSV files for speed,
and by default \code{stringsAsFactors} is set to FALSE.
A data frame is returned by the function (not a \code{data.table}).
}
