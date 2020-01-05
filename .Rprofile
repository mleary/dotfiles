#author: Matt Leary
#date: 1/3/2019
#intent: basic customization for my Rstudio sessions

############################################
#            Set session options           #
############################################
options(scipen=999)				# disable scientific notation
options(digits = 2)				# limit digits as much as possible
options(continue="... ")		# change continuation prompt to set it apart


############################################
#   Create new env. for custom functions   #
############################################

.env <- new.env()

######## print changes made ###############
.env$my_setup <- function(){
  cat(
	"Custom Settings:
  	 * Scientific Notation display is disabled 
  	 * Digits = 2
  	 * Change continuation prompt from '> ' to '... '
 
  	 Custom Functions:
  	 * my_setup: print .Rprofile settings and functions
  	 * lsp:		 print all functions in a package
  ")
}

######### see package functions ############
.env$lsp <-function(package, all.names = FALSE, pattern) {
    package <- deparse(substitute(package))
    ls(
        pos = paste("package", package, sep = ":"),
        all.names = all.names,
        pattern = pattern
    )
}


attach(.env)

############################################
#  Print Message that .Rprofile is loaded  #
############################################

glue::glue(
	"***********************************************************
	Loading Matt's .Rprofile
	To see changes, call `my_setup()`

	Current Working Directory is:
	{ getwd() }

	Cheers!
	***********************************************************"
)