#author: Matt Leary
#date: 2/5/2019
#intent: basic customization for my Rstudio sessions

############################################
#            Set session options           #
############################################
options(scipen=99)		# disable scientific notation
options(digits = 2)		# limit digits as much as possible
options(continue=" ")	# change continuation prompt to set it apart
options(max.print = 200)	# Lower number of print items from 1,000 to 100

############################################
#            Set Rstudio options           #
############################################
# rstudioapi::applyTheme(name = "Monokai")


############################################
#   Create new env. for custom functions   #
############################################

.profile_env <- new.env()

######## print changes made ###############
.profile_env$my_setup <- function(){
  cat(
    "Custom Settings:
   * Scientific Notation display is disabled 
   * Digits = 2
   * Change continuation prompt from '> ' to ' '
   * Max print 200 items, not 1,000
 
   Custom Functions in .profile_env:
   * my_setup:  .Rprofile settings and functions
   * see_libpaths: pretty print library paths
   * pkg_funcs:  print all functions in a package
   * load_pkg:  silently load package and alert if not installed
  ")
}


###### pretty print libs paths ############
.profile_env$see_libpaths <- function(){
  if (length(.libPaths()) > 1) {
    msg <- "Using libraries at paths:\n"
  } else {
    msg <- "Using library at path:\n"
  }
  libs <- paste("-", .libPaths(), collapse = "\n")
  cat(msg, libs, sep = "")	  
}


######### see package functions ############
.profile_env$pkg_funcs <-function(package, all.names = FALSE, pattern) {
  package <- deparse(substitute(package))
  ls(
    pos = paste("package", package, sep = ":"),
    all.names = all.names,
    pattern = pattern
  )
}

########## load startup packages ##############
.profile_env$load_pkg <- function(pkg) {
  if(!suppressWarnings(suppressMessages(require(pkg, character.only = TRUE)))) {
    message(paste0("You should install the `", pkg, "` package"))
  }  
}

attach(.profile_env)

############################################
#  Print Message that .Rprofile is loaded  #
############################################

message(
  "***********************************************************
Loading Matt's .Rprofile
To see changes, call `my_setup()`

Current Working Directory is:
-", getwd()," 

Cheers!
***********************************************************\n")


############################################
#              Load packages               #
#       Remember dont confuse people!      #
############################################

.profile_env$load_pkg("fcuk")
