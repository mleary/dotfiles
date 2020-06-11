#author: Matt Leary
#date: 6/10/2020
#intent: basic customization for my R sessions

############################################
#            Set session options           #
############################################
options(scipen=99)		# disable scientific notation
options(digits = 2)		# limit digits as much as possible
options(max.print = 500)	# Lower number of print items from 1,000 to 500


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
