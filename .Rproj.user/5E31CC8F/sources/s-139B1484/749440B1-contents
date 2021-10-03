#### Workbench for KSSPReport ####
library(usethis)
usethis::use_git_ignore("data-raw")

#### GIT commands to copy files from master to restructure_hm branch ####
# from: https://stackoverflow.com/questions/17416691/how-can-i-copy-files-from-a-branch-to-another-using-git
# git checkout restructure_hm
# git checkout master foo
# git commit -m 'Add file foo to restructure_hm.'



#' Getting Nulls Summaries for Required Fields
#'
#' @description
#' This will generate percent and counts of null message, by facility. All are calculated on a once-per-visit basis, except for:
#' Treating_Facility_ID, Trigger_Event, Message_Control_ID, Processing_ID, Version_ID, Message_Profile_ID, Event_Type_Code,
#' Recorded_Date_Time, Message_Date_Time, First_Patient_ID, Medical_Record_Number. These fields are required every single message, so
#' null counts are based on messages. The rest are required only once per-visit, so the whole visit is considered null *only*
#' if *every* record for that field from that visit was null.
#'
#' @details
#' The distinctions between optional vs. invalid and per visit vs. every message were made based off of our interpretation of the
#' PHIN guide as well as the needs of the Kansas Department of Health and Environment Syndromic Surveillance.
#'
#' @param data The raw data from BioSense on which you will do the null checks.
#' @return A summary data frame that lists counts and percentages for null fields, summarized at facility-level.
#' @import dplyr
#' @import tidyr
#' @export
