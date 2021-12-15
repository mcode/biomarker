// Examples that illustrate usage of the biomarkers guidance documentation.

Instance: patient-jane-doe-biomarker
InstanceOf: Patient
Description: "Example Patient for supporting biomarker examples."
* name.family = "Doe"
* name.given[0] = "Jane"

Instance: biomarker-estrogen-receptor
InstanceOf: BiomarkerProtein
Description: "Protein biomarker example: Estrogen Receptor"
* subject = Reference(patient-jane-doe-biomarker)
* status = #final "Final"
* code = LNC#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* valueCodeableConcept = LNC#LA6576-8 "Positive"

Instance: biomarker-her2-ihc
InstanceOf: BiomarkerProtein
Description: "Protein biomarker example: HER2 IHC"
* subject = Reference(patient-jane-doe-biomarker)
* status = #final "Final"
* code = LNC#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"
* valueCodeableConcept = LNC#LA11843-2 "3+"
* interpretation.text = "Overexpressed"

Instance: biomarker-mdm2-amplification
InstanceOf: BiomarkerProtein
Description: "Protein biomarker example: MDM2 amplification"
* subject = Reference(patient-jane-doe-biomarker)
* status = #final "Final"
* code = LNC#93808-4 "MDM2 gene amplification in Tissue by FISH"
* valueQuantity.value = 40
* interpretation.text = "Amplified"  // MLT: put in text since there was no interpretation term. Should we create a value set to extend what is currently in the default HL7 interpretation?

Instance: biomarker-pdl1-by-clone-22c3
InstanceOf: BiomarkerProtein
Description: "DNA tumor (point mutation) biomarker example: PD-L1 amplification"
* subject = Reference(patient-jane-doe-biomarker)
* status = #final "Final"
* code = LNC#93808-4 "PD-L1 by clone 22C3 [Presence] in Tissue by Immune stain"
* valueCodeableConcept = LNC#LA6576-8 "Positive"
* interpretation.text = "N/A (??)"