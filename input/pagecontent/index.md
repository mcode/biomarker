# Biomarkers


[link to biomarker page](biomarker.html)

This FHIR implementation guide (IG) is a actually a FHIR analysis of how to represent biomarkers in a way that combines genetic and serum-based prognostic tumor markers. This serves more as a document with computable FHIR examples. Profiles and value sets may be generated but it is secondary and created in support of further analyses. The output of this artifact may be merged into mCODE and supplementary content if relevant and appropriate.

Several use cases will be considered and include the following:
* cancer biomarkers compatible with the minimum Commom Oncology Data Elements (mCODE)
* representation of biomarkers that overlap with the HL7 Clinical Genomics Reporting Implementation Guide

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


# References
* Orfao, A., Gonzalez, J., Lopez, A., Abad, M., Bouza, P., Cruz, J, Alonso, A., San Miguel, J. (1995). [Flow cytometry in the diagnosis of cancer.](https://pubmed.ncbi.nlm.nih.gov/7652487/) _Scand J Clin Lab Invest Suppl_, 1995;221:145-52. doi: 10.3109/00365519509090577. 