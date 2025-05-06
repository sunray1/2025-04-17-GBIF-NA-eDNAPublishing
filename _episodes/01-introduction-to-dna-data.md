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

<embed src="{{ page.root }}/files/Intro-to-edna.pdf" type="application/pdf" width="1150" height="2000">

## Overview of Enriched Occurrences

Something here

## Introduction to NCBI and MixS standard

## It’s ok to not have it all figured out yet