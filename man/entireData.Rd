% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AggFunctions.R
\name{entireData}
\alias{entireData}
\title{Extracting the entire data of a specified data table}
\usage{
entireData(utd_api_key = NULL, table_name = "", citation = TRUE)
}
\arguments{
\item{utd_api_key}{An API key provided by a server manager at UTD}

\item{table_name}{A name of a data table. Input strings are NOT case-sensitive.}

\item{citation}{a logical indicating whether the package citation is printed (default is TRUE) or not.}
}
\value{
A list of data and an object of class \code{$citation}
}
\description{
This function allows users to obtain a entire dataset of a data table. The package
citation is also printed . In the method, the entire data are directly downloaded to disk of a local machine,
so please make sure that you have enough space for the data on your device. The size of
a particular data set can be estimated by \code{getQuerySize()}.
}
\note{
Some datasets are greather than 10GB. Please check a size of a dataset before downloading it on your device.
}
\examples{
\dontrun{
# to get the size of the entire data for Cline_Phoeinx_NYT
getQuerySize(utd_api_key = , table_name ='Cline_Phoenix_NYT', query = 'entire')
# to download the entire data of Cline_Phoeinx_NYT after confirming its size
data.nyt <- entireData(utd_api_key = , table_name ='Cline_Phoenix_nyt', citation = FALSE)}
}
