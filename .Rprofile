#author: Matt Leary
#date: 3/15/2020
#intent: basic customization for my R sessions

############################################
#            Set session options           #
############################################
options(scipen=99)		# disable scientific notation
options(digits = 2)		# limit digits as much as possible
options(continue=" ")	# change continuation prompt to set it apart
options(max.print = 500)	# Lower number of print items from 1,000 to 100


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
   * Max print 500 items, not 1,000")
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
.profile_env$load_pkg("tidylog")
