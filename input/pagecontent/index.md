# Biomarkers

Biomarkers have many potential applications in medicine including risk assessment, screening, differential diagnosis, determination of prognosis, prediction of response to treatment, and monitoring of progression of disease [source: ].

This FHIR implementation guide (IG) is a actually a Fast Healthcare Interoperability Resources (FHIR) analysis of how to comprehensively represent genetic and serum-based prognostic biomarkers. This serves more as a document with computable FHIR examples. Profiles and value sets may be generated but it is secondary and created in support of further analyses. 

Several use cases will be considered and include the following:
* [Cancer biomarkers](cancer_biomarker.html) compatible with mCODE™ (the minimal Common Oncology Data Elements)
* [Cancer biomarkers as translated from a College of American Pathologists (CAP) electronic biomarker checklist form to FHIR Observation resources](cap_biomarker.html).
* representation of biomarkers that overlap with the HL7 Clinical Genomics Reporting Implementation Guide

The output of this artifact may be merged into other FHIR IGs like mCODE or the HL7 Clinical Genomics Reporting IG if relevant and appropriate.

# Defining Biomarkers

While there is no broad consensus on a single definition of a biomarker, we will adopt the NCI definition: 
a biomarker is _“a biological molecule found in blood, other body fluids, or tissues that is a sign of a normal or abnormal process, or of a condition or disease."_


