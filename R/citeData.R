#########################################################
################ Citation functions #####################
################    Kate H. Kim     #####################
#########################################################
#' Obtaining the text or Bibtax to properly cite the data downloaded from the UTD Event data server for publications
#' @description This function returns the citation texts in text and Bibtex formats of data sets a user extracts
#' by the UTDEventData package.
#' @param table_name a name of a data table a user specifies. Your input is NOT
#' case-sensitive.
#' @return The texts of proper citations for publication in text and Bibtex formats
#' @note The citation texts for the package can be found after requesting data with `pullData()` or 'sendQeury()`.
#' @export
#' @examples \dontrun{# citations for Cline Phoenix Event data
#' citeData("cline_Phoenix_swb")
#' # citations for ICEWS
#' citeData("icews")
#' # citations for real-time phoenix data
#' citeData("phoenix_rt")}
citeData <- function(table_name = "") {

  tn <- tolower(table_name)
  # ut <- citation("UTDEventData")

  if(tn == 'cline_phoenix_nyt' || tn == 'cline_phoenix_swb' || tn == 'cline_phoenix_fbis'){
   full <- "Althaus, Scott, Joseph Bajjalieh, John F. Carter, Buddy Peyton, and Dan  A. Shalmon. 2017. Cline Center Historical Phoenix Event Data. v.1.0.0. Distributed by Cline Center for Advanced Social Research. June 30."
   title <- "Cline Center Historical Phoenix Event Data. v.1.0.0."
   author <- "Althaus, Scott and Bajjalieh, Joseph and  Carter, John F.and Peyton, Buddy and Shalmon, Dan  A."
   year <- "2017"
   note <- "Distributed by Cline Center for Advanced Social Research."
   cat("For a publication citation: \n\n  ", full, "\n\nFor a Bibtex entry: \n\n @Manual{, \n title={", title, "}, \n author={", author, "},\n year={",year,"},\n note={",note,"},\n}", sep = "")
  }

  else if(tn == 'icews') {
    full <- "Boschee, Elizabeth, Jennifer Lautenschlager, Sean O'Brien, Steve Shellman, James Starz, Michael Ward, 2015, 'ICEWS Coded Event Data', https://doi.org/10.7910/DVN/28075, Harvard Dataverse, V22"
    title <- "ICEWS Coded Event Data"
    author <- "Boschee, Elizabeth and Lautenschlager, Jennifer and O'Brien, Sean and  Shellman, Steve and Starz, James and Ward, Michael"
    year <- "2015"
    note <- "Harvard Dataverse, V22"
    url <- "https://doi.org/10.7910/DVN/28075"
    cat("For a publication citation: \n\n  ", full, "\n\nFor a Bibtex entry: \n\n @Manual{, \n title={", title, "}, \n author={", author, "},\n year={",year,"},\n note={",note,"}, \n url={",url,"},\n}", sep = "")
  }

  else if(tn == 'phoenix_rt'){
    full <- "Brandt, Patrick T., Vito D\u0092Orazio, Jennifer Holmes, Latifur Khan, Vincent Ng,  2018, Phoenix real time event data, University of Texas Dallas, http://eventdata.utdallas.edu"
    title <- "Phoenix Real Time Event Data"
    author <- "Brandt, Patrick T. and D\u0092Orazio, Vito and Holmes, Jennifer and Khan, Latifur and Ng, Vincent"
    year <- "2018"
    note <- "University of Texas Dallas"
    url <- "http://eventdata.utdallas.edu"
    cat("For a publication citation: \n\n  ", full, "\n\nFor a Bibtex entry: \n\n @Manual{, \n title={", title, "}, \n author={", author, "},\n year={",year,"},\n note={",note,"}, \n url={",url,"},\n}", sep = "")
  }

  else if(tn =="terrier"){
    full <- "Irvine, Jill, Christan Grant, Andrew Halterman, 2018, Temporally Extended, Regular, Reproducible International Event Records, University of Oklahoma, http://http://terrierdata.org/"
    title <- "Temporally Extended, Regular, Reproducible International Event Records"
    author <- "Irvine, Jill and Grant, Christan and Halterman, Andrew"
    year <- "2018"
    note <- "University of Oklahoma"
    url <- "http://terrierdata.org"
      cat("For a publication citation: \n\n  ", full, "\n\nFor a Bibtex entry: \n\n @Manual{, \n title={", title, "}, \n author={", author, "},\n year={",year,"},\n note={",note,"}, \n url={",url,"},\n}", sep = "")
  }
    
  else {
    print("Please check the name of a data table!")
  }
}
