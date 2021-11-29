// Sandbox for trying out new FHIR Shorthand examples for Logical Models.

Resource:       EmergencyVehicle
Title:          "Emergency Vehicle"
Description:    "An emergency vehicle, such as an ambulance or fire truck."
* identifier 0..* SU Identifier
    "Identifier(s) of the vehicle"
    "Vehicle identifiers may include VINs and serial numbers."
/*
* make 0..1 SU Coding
    "The vehicle make"
    "The vehicle make, e.g., Chevrolet."
// * make from EmergencyVehicleMake (extensible)
* model 0..1 SU Coding
    "The vehicle model"
    "The vehicle model, e.g., G4500."
// * model from EmergencyVehicleModel (extensible)
* year 0..1 SU positiveInt
    "Year of manufacture"
    "The year the vehicle was manufactured"
* servicePeriod 0..1 Period
    "When the vehicle was in service"
    "Start date and end date (if applicable) when the vehicle operated."
* operator 0..* Reference(Organization or Practitioner or PractitionerRole)
    "The operator"
    "The organization or persons repsonsible for operating the vehicle"
* device 0..* Reference(Device)
    "Devices on board"
    "Devices on board the vehicle."

Logical:        Human
Title:          "Human Being"
Description:    "A member of the Homo sapien species."
* name 0..* SU HumanName "Name(s) of the human" "The names by which the human is or has been known"
* birthDate 0..1 SU dateTime "The date of birth, if known"
    "The date on which the person was born. Approximations may be used if exact date is unknown."
* deceased[x] 0..1 SU boolean or dateTime or Age "Indication if the human is deceased"
    "An indication if the human has died. Boolean should not be used if date or age at death are known."
* family 0..1 BackboneElement "Family" "Members of the human's immediate family."
  * mother 0..2 FamilyMember "Mother" "Biological mother, current adoptive mother, or both."
  * father 0..2 FamilyMember "Father" "Biological father, current adoptive father, or both."
  * sibling 0..* FamilyMember "Sibling" "Other children of the human's mother and/or father."

Logical:        FamilyMember
Title:          "Family Member"
Description:    "A reference to a human's family member."
* human 1..1 SU Reference(Human) "Family member" "A reference to the human family member"
* biological 0..1 boolean "Biologically related?"
    "A family member may not be biologically related due to adoption, blended families, etc."

*/
