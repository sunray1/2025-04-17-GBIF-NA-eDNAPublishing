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

## Introduction to GenBank and BOLD

### BOLD (Barcode of Life Data Systems)

BOLD is a comprehensive informatics workbench launched in 2005 that supports the acquisition, storage, analysis, and publication of DNA barcode records. BOLD's primary purpose is to provide a centralized resource for DNA barcoding, which is a method used for species identification through DNA sequences, typically from the mitochondrial cytochrome c oxidase subunit 1 (COI) gene. As of May 2022, BOLD hosted over 11 million DNA barcodes, covering a broad spectrum of organisms: 239,000 animals, 71,000 plants, and 24,000 fungi.

For a DNA record to be considered a formal barcode in BOLD, it must meet seven essential criteria:
1. Species name
2. Voucher data (catalog number and institution storing the specimen)
3. Collection record (collector, collection date, and location with GPS coordinates)
4. Specimen identifier
5. Barcode sequence
6. PCR primers used to generate the amplicon
7. Trace files of the sequence data

BOLD has become an invaluable tool for taxonomists, phylogeneticists, and biodiversity researchers due to its vast archive of DNA barcodes and its comprehensive metadata, which includes detailed specimen information and photographic evidence. The ability to cross-reference species with DNA data has made BOLD a key resource in the taxonomy and molecular biology fields.

### GenBank

GenBank, managed by the National Center for Biotechnology Information (NCBI), is one of the largest and most widely used DNA sequence databases in the world. It has been a core resource for molecular biologists and bioinformaticians for decades. GenBank is part of the International Nucleotide Sequence Database Collaboration (INSDC), which also includes the European Bioinformatics Institute (EBI) and the DNA Data Bank of Japan (DDBJ). Collectively, these three institutions house sequence data from a variety of organisms and provide open access to DNA sequences from across the globe.

Over the years, GenBank has expanded beyond traditional gene sequences to include mitochondrial genomes, whole genomes, and data from next-generation sequencing (NGS) projects such as metagenomics and metabarcoding. GenBank also now houses data related to environmental DNA (eDNA), a form of DNA sequencing that detects genetic material in environmental samples (e.g., water or soil), which is becoming increasingly important in biodiversity research.

While GenBank is widely used for archiving raw DNA sequence data, it has recently started supporting the integration of occurrence data linked to these sequences. This has facilitated the use of GenBank as a tool for biodiversity monitoring, allowing researchers to register and share occurrence information tied to DNA sequences.

### How Are GenBank, BOLD, and GBIF Related?

Though BOLD, GenBank, and GBIF are separate databases, they share a common goal of advancing biodiversity research by facilitating access to DNA data. Here’s a breakdown of how they relate:

- **BOLD** focuses on DNA barcodes and has extensive metadata associated with each record. It is particularly useful for species identification and biodiversity monitoring. 
- **GenBank**, on the other hand, is a more comprehensive database that contains a wide range of nucleotide sequence data, from genes and genomes to environmental samples. It includes barcode data but also supports much more extensive datasets.
- **GBIF** is a global platform for biodiversity data and has begun supporting the sharing of occurrence data linked to DNA sequences. This includes eDNA and other forms of sequence-based biodiversity monitoring. While GBIF doesn't store sequence data itself, it provides a platform for the sharing and integration of biodiversity occurrence records, including those linked to sequences from GenBank or BOLD.

### Do These Platforms Share Data?

While these platforms do not automatically share data with each other, there is significant overlap in the types of data they store, and integration across these platforms is growing. For example:
- **BOLD and GenBank** both contain DNA sequence data, but they each have different criteria and focus areas. BOLD is more tailored to barcode data, while GenBank supports a broader range of sequence types.
- **GBIF** doesn’t directly store DNA sequences but acts as a facilitator for integrating occurrence data linked to genetic records from BOLD and GenBank. This helps connect sequence-based biodiversity monitoring with traditional biodiversity occurrence data.

It’s important to note that while these databases share some data, they do so in different ways, often focusing on different aspects of biodiversity data. However, the increasing integration of DNA-derived data into biodiversity platforms like GBIF is fostering a more connected and comprehensive approach to biodiversity research.

[Bar graph and Venn diagram showing how GenBank entries for barcoding link to BOLD and specimen vouchers.]({{ page.root }}/fig/Nakazato&Jinbo_2022_Fig1.jpg){: .image-with-shadow }

## It’s ok to not have it all figured out yet