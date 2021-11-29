/* ***************************************

Initial Logical Model for OmicsKnowledge.
Problem Statement: The HL7 Genomics Reporting FHIR IG uses an Observation resource for representing diagnostic and therapeutic implications. The phenotype and pharmacogenomics content is however not patient-centric and more accurately represents a knowledge artifact which is more tied to the variant. This content ideally could exist separate from patient-centric data.
After discussion at the HL7 CGWG meeting on 8/24, the group (namely Lloyd) agreed that there is value to trying a first pass at a dedicated resource for genomics "definitional content".
 */

Logical:        GenomicsKnowledge
Title:          "Genomics Knowledge Definition"
Description:    "Knowledge artifact with genomic phenotype data in support of a structured variant or mutation. The content is not patient specific. The initial logical model is based on the following UML for [Genomic Implications](http://build.fhir.org/ig/HL7/genomics-reporting/general.html#implications)."
* identifier 0..* SU Identifier "Unique identifier for the genomics knowledge artifact."
* name 0..1 SU string "Name of the knowledge artifact"
* versionDate 0..1 SU dateTime "The date and time associated with the knowledge artifact version."
* diagnosticImplication 0..* BackboneElement "Grouping of diagnostic implications."
  * clinicalSignificance 0..1 SU Coding "clinical signficance associated with a genomic variant or mutation."
  * associatedPhenotype 0..1 Reference(Condition) "Conditions which are found to be associated with a given variant or mutation."
  * functionalEffect 0..* Coding "The functional annotation associated with the variant or mutation. The current binding specified in the Genomics Reporting IG is Include codes from http://sequenceontology.org where concept is-a SO:0001536."