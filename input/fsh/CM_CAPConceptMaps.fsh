// CAP oncept maps

Instance: cap-biomarker-interpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.org/fhir/ConceptMap/cap-biomarker-interpretation"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2676d85d-8bc5-4a55-914e-9acc8870a1a5"
* version = "4.0.1"
* name = "BiomarkerInterpretation"
* title = "Biomarker Interpretation"
* status = #draft
* experimental = true
* date = "2022-05-10"
* publisher = "College of American Pathologists"
* contact.name = "CAP TBD (example)"
* contact.telecom.system = #url
* contact.telecom.value = "http://cap.org/fhir"
* description = "A mapping between CAP SDC interpretation identifiers to SNOMED"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept.text = "for CAP and mCODE alignment"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "Mapping from CAP biomarker SDC identifiers to standard controlled vocabularies"
* copyright = "Creative Commons 0"
* sourceUri = "http://cap.org/fhir/ValueSet/biomarker-interpretation"
* targetUri = "http://hl7.org/mcode/ValueSet/biomarker-interpretation"
* group.source = "http://cap.org/CodeSystem/lab-interpretation"
* group.target = "http://snomed.info/sct"
* group.element[0].code = #381652.381651
* group.element[=].display = "Negative"
* group.element[=].target.code = #260385009
* group.element[=].target.display = "Negative (qualifier value)"
* group.element[=].target.equivalence = #equal
* group.element[=].target.comment = "ALK Immunohistochemistry negative"
* group.element[+].code = #381652.381650
* group.element[=].display = "Positive"
* group.element[=].target.code = #10828004
* group.element[=].target.display = "Positive (qualifier value)"
* group.element[=].target.equivalence = #equal
* group.element[=].target.comment = "ALK Immunohistochemistry positive"
* group.element[+].code = #381652.381654
* group.element[=].display = "Equivocal (explain)"
* group.element[=].target.code = #42425007
* group.element[=].target.display = "Equivocal (qualifier value)"
* group.element[=].target.equivalence = #equal
* group.element[=].target.comment = "ALK Immunohistochemistry equivocal"

