---
layout: episode
title: "Introduction to DNA Data"
teaching: 90
questions:
- "Where do DNA data come from?"
- "What do they look like?"
objectives:
keypoints:
---

## Categories of DNA Data

DNA derived data are increasingly being used to document taxon occurrences. This genetic data may come from a sampling event, an individual organism, may be linked to physical material (or not), or may result from DNA detection methods e.g., metabarcoding or qPCR. Thus genetic data may reflect a single organism, or may include information from bulk samples with many individuals. Still, DNA-derived occurrence data of species should be documented as standardized and as reproducible as possible.

To ensure DNA data are useful to the broadest possible community, a community guide entitled [Publishing DNA-derived data through biodiversity data platforms](https://docs.gbif-uat.org/publishing-dna-derived-data/1.0/en/) was published by GBIF, OBIS, and others. This guide is supported by the [DNA derived data extension for Darwin Core](http://rs.gbif.org/extension/gbif/1.0/dna_derived_data_2021-07-05.xml), which incorporates MIxS terms into the Darwin Core standard. There are 5 categories for which genetic data could fall into:  

1. **DNA-derived occurrences**  
   These are occurrence records directly based on the detection of DNA in an environmental sample. Examples include environmental DNA (eDNA), metabarcoding, and metagenomics. In these cases, the presence of a taxon is inferred from sequence data rather than direct observation or capture of the organism itself.

2. **Enriched occurrences**  
   These involve individual specimens that have been sequenced, such as through DNA barcoding, genome, or transcriptome projects. Typically, these records are linked to a vouchered specimen or observed organism, enriching the original occurrence record.

3. **Targeted species detection**  
   This refers to the use of molecular methods designed to detect a specific species—often in a presence/absence fashion. For example, qPCR/ddPCR assays for specific species or pathogens. These detections may or may not be linked to physical samples, but the assays themselves are often well documented.

4. **Name references**  
   These involve taxonomic names derived from sequence clusters, such as Operational Taxonomic Units (OTUs), Amplicon Sequence Variants (ASVs), or Barcode Index Numbers (BINs). While not direct occurrences, these names are often used in ecological checklists or in reference to taxonomic hypotheses generated from DNA.

5. **Metadata only**  
   Some datasets may not contain data at all but describe metadata in broad terms, such as project authors, scope or laboratory workflows and sequencing methods. These datasets can still be valuable, especially when paired with future data or linked through identifiers.

> ## Categorizing Your DNA Data
>
> For a guide and decision tree on determining which category your DNA data falls into, see the [Data packaging and mapping](https://docs.gbif.org/publishing-dna-derived-data/1.0/en/#data-packaging-and-mapping) section of the GBIF guide.
{: .callout}

> ## Workshop Focus
>
> For the purpose of this workshop, we will focus on the first three categories:
>
> **DNA-derived occurrences**, **Enriched occurrences**, and **Targeted species detection**.
>
>These represent the most common and practical entry points for publishing DNA data to biodiversity platforms like GBIF.
{: .keypoints}

## Overview of DNA-derived Occurrences and Detection Data

<embed src="{{ page.root }}/files/Intro-to-edna.pdf" type="application/pdf" width="100%" height="700">

## Overview of Enriched Occurrences

If genetic material is connected to an observation or a physical sample, we call it an “enriched occurrence.” This means the DNA isn’t the only line of evidence—we can also trace the data back to a specific organism that was seen, collected, or otherwise documented.

This category includes a range of sequencing approaches such as DNA barcoding, whole genome sequencing, transcriptomics, target capture, or restriction digest assays (e.g., RAD-seq or ddRAD), as long as the sequences can be clearly associated with a reference sample (e.g., a museum specimen, tissue archive, or observational record). In many cases, metadata like voucher numbers, collection information, and taxonomic IDs are available and critical for data reuse.

Importantly, enriched occurrences can be derived from both newly collected material and historical specimens. In some instances, an entire physical specimen may not have been retained—such as when a sample (e.g., hair, feathers, or plant tissue) was taken in the field—but sufficient metadata (e.g., date, location, taxon identification) still allows the genetic data to be linked to a valid occurrence record. 

## Introduction to GenBank and BOLD

### BOLD (Barcode of Life Data Systems)

**[BOLD](https://portal.boldsystems.org/)** is a comprehensive informatics workbench launched in 2005 that supports the acquisition, storage, analysis, and publication of DNA barcode records. BOLD's primary purpose is to provide a centralized resource for DNA barcoding, which is a method used for species identification through DNA sequences, typically from the mitochondrial cytochrome c oxidase subunit 1 (COI) gene. 

### GenBank

**[GenBank](https://www.ncbi.nlm.nih.gov/genbank/)**, managed by the National Center for Biotechnology Information (NCBI), is one of the largest and most widely used DNA sequence databases in the world. It has been a core resource for molecular biologists and bioinformaticians for decades. Over the years, GenBank has expanded beyond traditional gene sequences to include mitochondrial genomes, whole genomes, and data from next-generation sequencing (NGS) projects such as metagenomics and metabarcoding. 

### Do These Platforms Share Data?

Yes—at least in part. The relationships between **BOLD**, **GenBank**, and **GBIF** involve some data sharing, but they serve different roles and audiences, they do not share all of their data with each other, nor are they consistently cross-referenced or synced.

- **BOLD**: Data in BOLD are categorized as either public or private. Only data marked as public (or those under embargo) can be pushed to GenBank, allowing for automatic submission of data upon initiation by the data manager. Once submitted, records are linked and updated from BOLD to GenBank, with taxonomic identification changes automatically communicated. 
- **GenBank**: Stores a wide variety of DNA sequence data, including records submitted from BOLD. However, data is not automatically shared outward from GenBank, nor is it typically ingested by BOLD or GBIF.
- **GBIF**: Ingests all publicly available data from BOLD and makes it accessible as part of global biodiversity occurrence data.

> ## Record Distribution Across Platforms
>
> To see how the same DNA record can be distributed across platforms, explore this example:
> - [BOLD record](https://portal.boldsystems.org/record/ABMMC131-06)
> - [GenBank sequence](https://www.ncbi.nlm.nih.gov/nuccore/OQ968921.1)
> - [GBIF occurrence](https://www.gbif.org/occurrence/2248495877)  
{: .discussion}

![Venn Diagram showing how BOLD, GenBank and GBIF records overlap.]({{ page.root }}/fig/bold_gbif_gb.png){: .image-with-shadow }

## It’s ok to not have it all figured out yet

Publishing biodiversity data can be messy—and that’s perfectly okay. A good example is how NEON data currently appear in BOLD and GBIF. Sometimes, related datasets—like fish vouchers and the DNA extracted from those same fish—end up split across datasets instead of being linked as one record.

For instance, a mammal voucher collected by NEON is [published to GBIF](https://www.gbif.org/occurrence/2620843338), while the DNA material from that mammal is stored separately in a different dataset, also [published to GBIF](https://www.gbif.org/occurrence/3111103987). Because this DNA material was sequenced, it is [available on BOLD](https://portal.boldsystems.org/record/MAMN4332-19), which is also [published to GBIF](https://www.gbif.org/occurrence/2633526610). This has resulted in three separate records, which should probably only be one. Also note the taxonomic discrepencies!

![Screenshot showing separate NEON records for the same specimen on GBIF]({{ page.root }}/fig/dups.png){: .image-with-shadow }
**Figure**: Three GBIF records representing what is the same NEON specimen. a) shows the mammal voucher; b) is the DNA material derived from that voucher; and c) is the DNA barcode record from BOLD, which is also pushed to GBIF. These records are not linked, despite being biologically connected.

These kinds of disconnects are common. The reality is: aligning genetic, voucher, and occurrence data takes time, tools, and coordination—and not every project has those resources. But that doesn’t mean the data shouldn’t be shared.

Even if it’s imperfect, getting the data out there helps move science forward. It's far better than letting valuable information sit hidden for years, waiting for everything to be "just right."

> **Good enough and accessible beats perfect and invisible.**