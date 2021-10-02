#### biosensequality Workbench ####

###### 2021-10-01 ######

# Data sets to document
"'admit_source' 'age_units' 'blood_pressure_units' 'country' 'county'
  'diagnosis_type' 'discharge_disposition' 'ethnicity' 'facility_type'
  'gender' 'height_units' 'hl7_values' 'patient_class'
  'pulse_oximetry_units' 'race' 'smoking_status' 'state' 'weight_units'"

#' Getting Invalid Examples and Summaries for Admit_Source
#'
#' This function will generate two data frames: first, a frame to be used later to extract invalid examples from;
#' second, a frame that contains facility-level summaries for counts and percentages of invalid Admit_Source.
#' 
#' The valid admit source value data were taken from the `PHVS_AdmitSource_HL7_2x_V1.xls` file from 
#' Public Health Information Network Vocabulary Access and Distribution System value sets
#' (https://phinvads.cdc.gov/vads/ViewView.action?name=Syndromic%20Surveillance). The package will
#' be updated as the CDC provides new or different codes that are considered valid or invalid.
#' 
#' You can view the concept codes that are considered valid by calling `data("admit_source")`.
#' 
#' @param data The raw data from BioSense on which you will do the invalid admit source checks.
#' @return A list of two data frames: examples and summary for invalid Admit_Source.
#' @import dplyr
#' @export