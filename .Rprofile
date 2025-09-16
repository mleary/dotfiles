#author: Matt Leary
#date: 08/13/2020
#updated: 09/15/2025
#intent: basic customization for my R sessions 

if (interactive()) {
    ############################################
    #            Set session options           #
    ############################################
    options(scipen=99)		# disable scientific notation
    options(digits = 2)		# limit digits as much as possible

  
    ############################################
    #  Print Message that .Rprofile is loaded  #
    #       and add message about changes      #
    ############################################
    
  # print changes & working directory
    message( 
"***********************************************************
    Loading Matt's .Rprofile
        Custom Settings:
          * Scientific Notation display is disabled 
          * Digits = 2

    Current Working Directory is:
        -", getwd()," \n",
      "Cheers!
***********************************************************\n"
    )                     


    ###### Console prompt chnages
    if(requireNamespace("prompt", quietly = TRUE)) {
      prompt_git <- function(...){
        paste0(
          "[", prompt::git_branch(), "]",
          " > "
        )
      }

      if(prompt::prompt_git() == "> "){
        prompt::set_prompt("[no git] >")
      } else {
        prompt::set_prompt(prompt_git()) 
      }

    } else {
      message("\nHi! You should install the {prompt} package.")
    }

    ############################################
    #     remove prompt from session           #
    ############################################
    rm(prompt_git)
  
}

