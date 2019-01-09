# UTDEventData ver. 0.8.0

This R package helps a user to extract a data set from the UTD Event Data server with the country names and time ranges. The project of the UTDEventData R package has not fully completed and is updated everyday. Your comments, feedback, and suggestions are welcome to develop it.   
If you have questions in using the package, please contact Kate Kim (<hyoungah.kim@utdallas.edu>).

There are several functions to explore and extract data in the package. More details of these methods are illustrated in the vignettes of this package. 

- Table: a reference class 
- citeData( ): for citing the package and data tables in the UTD server for publications
- DataTable( ): for looking up the data table at UTD data 
- TableVar( ): for looking up the variables in a specified data table
- pullData( ): for extracting a data set with countries and time range 
- getQuerySize(): for measuring the size of requested data to the server
- sendQuery( ): for requesting specified data to the API server to extract a data set

****
- returnCountry( ): creating the query block of countries
- returnLatLon( ): creating the query block of regions with latitude and longitude
- returnDyad( ): creating the dyad query of source and target actors
- returnRegExp( ): creating the query of features of attributes in a data table
- orList( ): the function for a union of the query blocks 
- andList( ): the function for an intersection of the query blocks

This package requires you to have an API key to access to the UTD data server. Please find the following link and fill out the form to obtain an API key. 
<http://eventdata.utdallas.edu/signup>

## Installation

```
# without the vignette
devtools::install_github("KateHyoung/UTDEventData") 

# with the vignette
devtools::install_github("KateHyoung/UTDEventData", build_vignettes=TRUE)
```
## Vignette
The vignette is shown after installing the package and typing the following code in R console.

```
# access to the UTDEventData document 
vignette("UTDEventData")
```

## Authors  
Dr. Patrick T. Brandt <pbrandt@utdallas.edu>  
Dr. Vito D'Orazio <dorazio@utdallas.edu>  
Micheal J. Shoemate <michael.shoemate@utdallas.edu>  
Jared Looper <jrl140030@utdallas.edu>  
Hyoungah (Kate) Kim <hyoungah.kim@utdallas.edu>  

## License
GPL-3 <br/>
*This package is supported by the RIDIR project funded by National Science Foundatioin, Grant No. SBE-SMA-1539302.*
