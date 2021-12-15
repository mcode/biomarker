// playing with possibility of a dedicated biomarker profile with the intent of creating a many to 1 FHIR mapping depending on the type of test.

Profile:        BiomarkerTest
Parent:         Observation
Id:             biomarker-test
Title:          "Biomarker Test"
Description:    "The result of a tumor marker test. Tumor marker tests are generally used to guide treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence."
* subject 1..1
* code from TumorMarkerTestVS (required)
// * code obeys tumor-marker-test-code-invariant
* subject only Reference(Patient)
* effective[x] only dateTime or Period
* value[x] only Quantity or Ratio or string or CodeableConcept
// Already MS in US Core Obs Lab: status, category, code, subject, effective[x], value[x], dataAbsentReason
* specimen MS

Profile:        BiomarkerProtein
Parent:         Observation
Id:             biomarker-protein
Title:          "Biomarker Test - Protein Markers"
Description:    "The result of a tumor marker test specific for gene expression or surface protein markers. Examples include estrogen receptor"
* subject 1..1
* code from ProteinMarkerTestVS (required)
// * code obeys tumor-marker-test-code-invariant
* subject only Reference(Patient)
* effective[x] only dateTime or Period
* value[x] only Quantity or Ratio or string or CodeableConcept
// Already MS in US Core Obs Lab: status, category, code, subject, effective[x], value[x], dataAbsentReason
* specimen MS