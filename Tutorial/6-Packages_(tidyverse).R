# Packages
# You can find repositories on Bioconductor, R-Forge, rOpenSci, or GitHub, but
# the most commonly used repository is the Comprehensive R Archive Network or
# CRAN. CRAN stores code and documentation so that you can install packages into
# your own RStudio space.

installed.packages() # see all the installed packages

install.packages("tidyverse") # install seleceted package. 
# In this case tidyverse is a collection of packages.
# The loaded packages are ggplot2, tibble, tidyr, readr, purrr, dplyr, stringr, and forcats. 

library("tidyverse") #loading of the package or the collection of them. 
                     #The conflits represent functions 
                     #that have the same name in another package.
# A vignette is documentation that acts as a guide to an R package. A vignette
# shares details about the problem that the package is designed to solve and 
# how the included functions can help you solve it. 
# The browseVignettes function allows you to read through vignettes of a loaded package.
# To check out vignettes for one specific package, type browseVignettes(“packagename”)
browseVignettes("tidyverse") 
