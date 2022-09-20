<p align="center">
  <img src="https://user-images.githubusercontent.com/102712597/190896296-270c7966-da6f-4c38-8051-9c5208834ed0.png"/>
</p>

# ExcavatePDF

This package includes a collection of libraries such as "tm", "pdftools", "wordcloud", and "dplyr" that are programmed to be automated in order
to reach optimum efficiency at collecting and processing unstructured data from a portable document format file.


## Installation

```r
#Install devtools package
if (!require("devtools")) 
 install.packages("devtools")
  
#Install package with devtools
devtools::install_github("RakhaHafishSetiawan/ExcavatePDF")
```
    
## Function Call

This R Package consists of three main functions, the first one being FrameAndMatrix(), 
this function allows the user to convert a single pdf file into structured data (data frame and data matrix),
the second one being ToCloud(occurences), this function allows the user to convert the available data matrix (occurences) into a wordcloud, and the final one being ToChart(DTF), this function allows 
the user to convert the the available data frame (DTF) into a column chart.


• Convert PDF file to a data frame and data matrix


```r
  ExcavatePDF::FrameAndMatrix(Insert_Directory)

```

• Convert data matrix into a wordcloud


```r
  ExcavatePDF::ToCloud(occurences)

```

• Convert data frame into a column chart


```r
  ExcavatePDF::ToChart(DTF)

```
## Version History

* 0.1.2
    * Added color option to ToChart()
    
* 0.1.1
    * Added data matrix view 
    * Bug fix on loading dplyr
    
* 0.1.0
    * Initial release


## Authors

- [@RakhaHafishSetiawan](https://github.com/RakhaHafishSetiawan)


## Credits
This R package uses the following open source packages:

 - [pdftools](https://github.com/ropensci/pdftools)
 - [tm](https://cran.r-project.org/web/packages/tm/index.html)
 - [wordcloud](https://cran.r-project.org/web/packages/wordcloud/index.html)
- [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html)
 - [magrittr](https://magrittr.tidyverse.org/)
 - [ggplot2](https://ggplot2.tidyverse.org/)
