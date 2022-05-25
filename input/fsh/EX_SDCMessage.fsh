Instance: testsPerformed
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF.31159.100004300"
* status = #final
* code = https://cap.org/eCC#31159.100004300 "Test(s) Performed"
* subject = Reference(urn:uuid:39089c19-9e1b-4de2-8637-3956e462b9ae)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept.coding[0] = https://cap.org/eCC#31160.100004300 "Estrogen Receptor (ER) Status (Note A)"
* valueCodeableConcept.coding[+] = https://cap.org/eCC#31161.100004300 "Progesterone Receptor (PgR) Status (Note A)"
* valueCodeableConcept.coding[+] = https://cap.org/eCC#31163.100004300 "HER2 by Immunohistochemistry (Note B)"
* hasMember[0].identifier.system = "https://cap.org/eCC"
* hasMember[=].identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#26435.100004300"
* hasMember[+].identifier.system = "https://cap.org/eCC"
* hasMember[=].identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31089.100004300"
* hasMember[+].identifier.system = "https://cap.org/eCC"
* hasMember[=].identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#30524.100004300"
* hasMember[+].identifier.system = "https://cap.org/eCC"
* hasMember[=].identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31012.100004300"

Instance: unnamed1
//Need to double check what parent question this is. It's an error in the parser
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#26435.100004300"
* status = #final
* code = https://cap.org/eCC#26435.100004300
* subject = Reference(urn:uuid:95a9ed64-9191-40f5-92bd-656097cd5b16)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept = https://cap.org/eCC#29604.100004300 "Positive"
* derivedFrom.identifier.system = "https://cap.org/eCC"
* derivedFrom.identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF.31159.100004300"

Instance: testType
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31089.100004300"
* status = #final
* code = https://cap.org/eCC#31089.100004300 "Test Type"
* subject = Reference(urn:uuid:e1782eb8-118e-4c27-b7ce-8ee562997285)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept = https://cap.org/eCC#31091.100004300 "Laboratory-developed test"
* derivedFrom.identifier.system = "https://cap.org/eCC"
* derivedFrom.identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF.31159.100004300"

Instance: undefined
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#30524.100004300"
* status = #final
* code = https://cap.org/eCC#30524.100004300
* subject = Reference(urn:uuid:381f88d0-1b08-42ab-9b93-6de27d28b5f6)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept = https://cap.org/eCC#30533.100004300 "Positive"
* derivedFrom.identifier.system = "https://cap.org/eCC"
* derivedFrom.identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF.31159.100004300"

Instance: unnamed2
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31012.100004300"
* status = #final
* code = https://cap.org/eCC#31012.100004300
* subject = Reference(urn:uuid:361c750e-6666-4f35-8f03-42d8bf45fb99)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept = https://cap.org/eCC#31016.100004300 "Negative (Score 1+)"
* derivedFrom.identifier.system = "https://cap.org/eCC"
* derivedFrom.identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF.31159.100004300"

Instance: coldIschemia
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#52536.100004300"
* status = #final
* code = https://cap.org/eCC#52536.100004300 "Cold Ischemia and Fixation Times"
* subject = Reference(urn:uuid:6be77b35-d8e9-4c37-90d9-a8df703e79ed)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept = https://cap.org/eCC#46287.100004300 "Meet requirements specified in latest version of the ASCO / CAP Guidelines"

Instance: fixative
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31086.100004300"
* status = #final
* code = https://cap.org/eCC#31086.100004300 "Fixative"
* subject = Reference(urn:uuid:9224cfaf-99ef-424b-8df3-5bddbea1fc5a)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept = https://cap.org/eCC#31087.100004300 "Formalin"

Instance: imageAnalysis
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31128.100004300"
* status = #final
* code = https://cap.org/eCC#31128.100004300 "Image Analysis"
* subject = Reference(urn:uuid:221048b9-a005-48bb-bb21-1d54b32eba71)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept = https://cap.org/eCC#31130.100004300 "Performed"
* hasMember.identifier.system = "https://cap.org/eCC"
* hasMember.identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF.31131.100004300"

Instance: biomarkerScore
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF.31131.100004300"
* status = #final
* code = https://cap.org/eCC#31131.100004300 "Biomarkers Scored by Image Analysis"
* subject = Reference(urn:uuid:af5d17b0-3f91-4eb2-be1c-7f0de07dd422)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueCodeableConcept.coding[0] = https://cap.org/eCC#31132.100004300 "ER"
* valueCodeableConcept.coding[+] = https://cap.org/eCC#31133.100004300 "PgR"
* valueCodeableConcept.coding[+] = https://cap.org/eCC#31134.100004300 "HER2 by IHC"
* derivedFrom.identifier.system = "https://cap.org/eCC"
* derivedFrom.identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31128.100004300"

Instance: comments
InstanceOf: Observation
Usage: #example
* identifier.system = "https://cap.org/eCC"
* identifier.value = "Breast.Bmk.169_1.003.001.CTP3_sdcFDF#31137.100004300"
* status = #final
* code = https://cap.org/eCC#31137.100004300 "Comment(s)"
* subject = Reference(urn:uuid:04385287-7690-479b-afe6-642c41b864d4)
* effectivePeriod.start = "2022-05-16T20:23:31+00:00"
* performer = Reference(urn:uuid:162802f9-da97-469c-9159-614596b6a87a) "R. Bambrick"
* performer.type = "Practitioner"
* valueString = "CAP Breast Biomarker - mCODE alignment - Test01"