# Guidance Summary: Cancer Biomarkers Use Case
* Filter both TumorMarkerTest and CancerGeneticVariant observations based on the designated biomarker categories noted: Protein, DNA Tumor Marker, non-genetic prognostic tumor markers. Value sets with test codes (mostly coded as but not limited to LOINC) have been created.
* After identifying the biomarker category, refer to the mapping tables on which elements in each profile to map to the identified tuple.

## Background

The Genomics Data Sharing (GDS) group is looking to simplify the mCODE genomics elements.
An initial proposal was to create a super-class of biomarkers that combines 
* prognostic tumor markers that are performed by more general reference labs 
* genomic variants originating from sequencing reports

It was also requested that individual observations be stored as a "tuple".

<div style="text-align: center;">
<img src="biomarker-simple.png" alt="biomarker simplification" width="600" height="400" />
</div>
<br/>

After initial discussions with GDS and the HL7 Clinical Genomics Working Group, we surmise that the mCODE genomics profiles do not need signficant changes. Rather, further guidance is needed on how to convert rather complex and broad models needed for genomics reporting and for genomics research into a simplified materialized view for use by oncology providers at the point of care. 
<br/>

### Scope and Assumptions

* It is up to the receiving application to further extract and categorize biomarker tests with pre-coordinated terms past the test name. For example, the test [MAML2 11q21 gene rearrangements in Tissue by FISH](https://loinc.org/74034-0/) has several pre-coordinated terms which need further extraction if needed (gene name of MAML2, mutation type of rearrangement, and location of 11q21). LOINC does not do that. The receiving application, through creating their own test compendiums or other means, will need to further distinguish any categorization by sub-classes if needed.

* Specific reference lab services are mentioned for illustrative purposes in the analysis. These specific references will removed and generalized should this artifact evolve into a more formal publication.

* As noted by in the joint National Institute of Health (NIH) and Food and Drug Administration (FDA) [Biomarkers, EndpointS, and other Tools (BeST) resource](https://www.ncbi.nlm.nih.gov/books/NBK326791/, there is no universally accepted definition of a biomarker. BeST defines **biomarker** as _A defined characteristic that is measured as an indicator of normal biological processes, pathogenic processes, or biological responses to an exposure or intervention, including therapeutic interventions. Biomarkers may include molecular, histologic, radiographic, or physiologic characteristics._

* The analyses in this artifact consider the above definition as too broad and instead further narrows this definition as follows.


* **Biomarker:** TBD


### Types of Cancer Biomarkers

mCODE separated the notion of "tumor markers" and "genomics elements" for pragmatic informatics reasons related to reference lab instrumentations and the sending of results to receiving applications like electronic health records (EHRs).

* genetic DNA tumor markers identified through variants from genomic sequencing tests. For example:
    * 

* genetic DNA tumor markers identified through reference labs as point mutation tests. For example:
    * 

* mRNA and protein tumor markers identified through gene expression from Immunohistochemistry (IHC) or In-Situ Hybridization (ISH) tests. For example:
    * Estrogen Receptor (ER)
    * Progesterone Receptor (PR)
    * Receptor tyrosine-protein kinase erbB-2 (ERBB2), also known as HER2/neu
    * [Programmed death-ligand 1 (PD-L1)](https://www.mayocliniclabs.com/it-mmfiles/PD-L1_Immunohistochemistry_Options.pdf)

* non-genetic prognostic tumor markers such as cancer antigen tests. For example:
    * [prostate-specific antigen (PSA)](https://labtestsonline.org/tests/prostate-specific-antigen-psa)
    * [carcinoembronic antigen (CEA)](https://labtestsonline.org/tests/carcinoembryonic-antigen-cea)
    * [Alpha Fetoprotein (AFP)](https://labtestsonline.org/tests/alpha-fetoprotein-afp-tumor-marker)


### Analysis Approach
Analysis of the following data feeds:

Unstructured test reports:
* Caris offers [cancer-specific biomarker tests](https://www.carislifesciences.com/order-a-test/) which aggregate DNA, RNA, and protein tumor marker tests.


#### References

* Orfao, A., Gonzalez, J., Lopez, A., Abad, M., Bouza, P., Cruz, J, Alonso, A., San Miguel, J. (1995). [Flow cytometry in the diagnosis of cancer.](https://pubmed.ncbi.nlm.nih.gov/7652487/) _Scand J Clin Lab Invest Suppl_, 1995;221:145-52. doi: 10.3109/00365519509090577. 

### Cancer Biomarker Representation

The need for reprsenting biomarkers originated with mCODE™ (the minimal Common Oncology Data Elements). mCODE was conceived of as a lightweight standard that would enable the treatment of every cancer patient to contribute to comparative effectiveness analysis of cancer treatments by allowing for easier methods of data exchange between health systems. Fundamentally, mCODE is a step towards capturing research-quality data from the treatment of all cancer patients.  mCODE benefits from the HL7 FHIR Implementation Guide (HL7 IG) representing a core set of structured data elements for oncology electronic health records (EHRs) which it has inherited. As a result, regarding genomic, and biomarkers in general, the current implementation of mCODE from an -omics standpoint borrows heavily from the [HL7 Genomics Reporting IG](http://hl7.org/fhir/uv/genomics-reporting/index.html).


mCODE was designed to be minimal – however the context of this “minimal-ness” may differ among target use cases particularly when applied to omics. Here we will distinguish between a research and clinical use case. It is important to note that research requirements for genomics differ greatly from that for clinical genomics.  As it stands, mCODE is designed to house the discrete genetic variants vis-à-vis a detailed cancer genomics report. This is certainly useful for researchers who require specific data provenance regarding the derivation of genomic values. Aside from the cancer genomics report metadata, for each genetic variants there are over 40 fields that can potentially be filled in. Certainly, not every field was meant to be filled in nor is meaningful for all situations.


If we examine clinical genomics in the context of patient sharing for patient sharing among institutions, only the actionable alterations are generally of import. For example, an oncologist may relate to a colleague that he or she has “a patient with a pathogenic KIT mutation from a recent biopsy specimen” and was wondering if there were any active clinical trials or medications that may benefit this patient. In the clinical context, these five pieces of information are critical:


* Biomarker source
* Biomarker category
* Biomarker name
* Biomarker result
* Biomarker interpretation


For example:


| Biomarker Element         | Example value              |
|---------------------------|----------------------------|
| Biomarker source          | tumor | 
| Biomarker category        | DNA mutation |
| Biomarker name            | KIT |
| Biomarker result          | mutated |
| Biomarker interpretation  | pathogenic | 
{: .grid }



Indeed, this canonical form generalizable way of passing biomarker information from medical provider to medical provider for the purposes of clinical care. Patients, too, if they wished to share their information with providers simply would need to know these several fields for clinically actionable care. Other case examples

#### Biomarker Form Examples


##### Protein Expression


| Biomarker Element         | Example value              |
|---------------------------|----------------------------|
| Biomarker source | tumor | 
| Biomarker category | IHC |
| Biomarker name | INI-1 |
| Biomarker result | loss |
| Biomarker interpretation | deficiency |
{: .grid }



### Technical Implementation

mCODE separated the notion of "tumor markers" and "genomics elements" for pragmatic informatics reasons related to reference lab instrumentations and the sending of results to receiving applications like electronic health records (EHRs).

In order to balance the genomics research community needs for details with the more simple and shallow needs of the provider community, we propose a structural and semantic mapping strategy to for the simplified biomarker "views" described in the rationale.

* molecular tumor markers identified through DNA, protein, or chromosomal variants from genomic sequencing tests. For example:
    * ALK


* mRNA and protein tumor markers identifying gene expression or gene amplfications from Immunohistochemistry (IHC),  In-Situ Hybridization (ISH), or other similar tests. For example:
    * Estrogen Receptor (ER)
    * Progesterone Receptor (PR)
    * Receptor tyrosine-protein kinase erbB-2 (ERBB2), also known as HER2/neu
    * [Programmed death-ligand 1 (PD-L1)](https://www.mayocliniclabs.com/it-mmfiles/PD-L1_Immunohistochemistry_Options.pdf)
    * [MDM2](https://ltd.aruplab.com/Tests/Pub/3001301)

* non-genetic prognostic serum tumor markers such as cancer antigen tests. For example:
    * [prostate-specific antigen (PSA)](https://labtestsonline.org/tests/prostate-specific-antigen-psa)
    * [carcinoembronic antigen (CEA)](https://labtestsonline.org/tests/carcinoembryonic-antigen-cea)
    * [Alpha Fetoprotein (AFP)](https://labtestsonline.org/tests/alpha-fetoprotein-afp-tumor-marker)


#### Analysis Approach
Analysis of the following data feeds:

Unstructured test reports:
* Caris offers [cancer-specific biomarker tests](https://www.carislifesciences.com/order-a-test/) which aggregate DNA, RNA, and protein tumor marker tests.


#### Structural Mapping Guidance

* All simplified biomarker constructs mapped from a detailed mCODE genomics resource **SHALL** have a reference to that originating resource.
##### Biomarker pattern #1: Protein Tumor Marker with Quantitative Value

Map from the mCODE CancerGenomicVariant profile if the biomarker of type [ProteinMarkerTestVS] was part of a mutational analysis from a genomic sequencing test.


The pattern of translation is as follows:


| Biomarker Observation element| mCODE Profile Name   | mCODE Element Path      | Comments             |
|------------------------------|----------------------|---------------------------|--------------------|
| biomarker-source | ProteinMarkerTest    | Specimen.type.coding.displayName | |
| biomarker-category | ProteinMarkerTest | Observation.category.code | |
| biomarker-name | ProteinMarkerTest | Observation.code.coding.displayName  |  |
| biomarker-value | ProteinMarkerTest | Observation.valueCodeableConcept | |
| biomarker-interpretation | ProteinMarkerTest | Observation.interpretation | |
{: .grid }


| Biomarker Element         | Example value              |
|---------------------------|----------------------------|
| Biomarker source | tumor | 
| Biomarker category | IHC |
| Biomarker name | INI-1 |
| Biomarker result | loss |
| Biomarker interpretation | deficiency |
{: .grid }


_Biomarker pattern #1 Example#1:_
[Estrogen Receptor (ER) status:](Observation-biomarker-estrogen-receptor.html)

Resulting simplified biomarker representation:


| **biomarker-element**       | **value**        | 
|-----------------------------|------------------|
| biomarker-code   |   | 
{: .grid }


##### Biomarker pattern #2: Protein Tumor with Simple Interpretation

If the biomarker is a protein tumor marker with a result that denotes confirmation of presence (_positive_, _negative_, _undetermined_,_etc_).



##### Biomarker pattern #3: Molecular Tumor Marker from a Genomics Report - Variant details

If the biomarker is from a genomics sequencing report, and whose results are represented with detailed variant data represented conformant with bioinformatics standards like HGNC and HGVS.

Map from the mCODE CancerGenomicVariant profile if the biomarker of type [DNATumorMarkerTestVS] was part of a mutational analysis from a genomic sequencing test.

The structural data mapping is as follows:


| Biomarker Observation element | mCODE Profile Name   | mCODE Element Path        | Comments           |
|-------------------------------|----------------------|---------------------------|--------------------|
| biomarker-source | TumorMarkerTest    | Specimen.type.coding.displayName |  |
| biomarker-name | CancerGenomicVariant | Observation.component:geneStudied.valueCodeableConcept.display | uses the HGNC symbol rather than the code |
| biomarker-value | TumorMarkerTest | Observation.valueCodeableConcept |  |
| biomarker-interpretation | CancerGenomicVariant | Observation.component:clinicalSignificance |  |
{: .grid }


##### Biomarker pattern #4: Molecular Tumor Marker from a Genomics Report - DNA Copy Number Alteration


| Biomarker Element         | Example value              |
|---------------------------|----------------------------|
| Biomarker source | tumor | 
| Biomarker category | DNA Copy Number Alteration |
| Biomarker name | MDM2 |
| Biomarker result | 120 copies |
| Biomarker interpretation | amplification |
{: .grid }

##### Biomarker pattern #5: Molecular Tumor Marker from a Genomics Report - Simple Assertion of Mutation

| Biomarker Element         | Example value              |
|---------------------------|----------------------------|
| Biomarker source | tumor | 
| Biomarker category | DNA mutation |
| Biomarker name | KIT |
| Biomarker result | mutated |
| Biomarker interpretation | pathogenic | 
{: .grid }


**MLT_NOTE:** Biomarker interpretation might be overloaded and complicating consistent mapping. It's an amplification in pattern #4, and a clinical significance in pattern #5.


##### Biomarker pattern #5: Molecular Tumor Marker from a Genomics Report - Fusion Analysis

A gene made by joining parts of two different genes. Fusion genes, and the fusion proteins that come from them, may be made in the laboratory, or made naturally in the body when part of the DNA from one chromosome moves to another chromosome. (source: [NCI](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/fusion-gene))

The mCODE mapping is as follows:


| Biomarker Observation element| mCODE Profile Name   | mCODE Element / Path      | Comments           |
|------------------------------|----------------------|---------------------------|--------------------|
| biomarker source | GenomicSpecimen | Specimen.code | |
| biomarker category | CancerGenomicVariant | Observation.method | |
| biomarker name | CancerGenomicVariant | Observation.component:geneStudied.coding.text  | Use a dash delimiter to denote the fusion gene. For example, BCR-ABL1 |
| biomarker result | CancerGenomicVariant | Observation.component:geneStudied.valueCodeableConcept | TBD |
| biomarker interpretation | CancerGenomicVariant | Observation.component:clinicalSignificance.valueCodeableConcept | TBD |
{: .grid }

<br />

**Example:** 

| Biomarker Element         | Example value              |
|---------------------------|----------------------------|
| Biomarker source | tumor | 
| Biomarker category | RNA fusion analysis |
| Biomarker name | FUS-CHOP |
| Biomarker result | fusion |
| Biomarker interpretation | pathogenic |
{: .grid }

### References
* Orfao, A., Gonzalez, J., Lopez, A., Abad, M., Bouza, P., Cruz, J, Alonso, A., San Miguel, J. (1995). [Flow cytometry in the diagnosis of cancer.](https://pubmed.ncbi.nlm.nih.gov/7652487/) _Scand J Clin Lab Invest Suppl_, 1995;221:145-52. doi: 10.3109/00365519509090577. 
