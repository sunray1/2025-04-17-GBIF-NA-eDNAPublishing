---
title: "The MDT"
teaching: 30
exercises: 0
questions:
- "What is the MDT?"
- "How do you use it to publish metabarcoding data?"
objectives:
- "Be able to explain what the MDT is"
- "Know how to find and use guidance for the MDT"
keypoints:
- "The MDT is a tool for turning typical metabarcoding outputs into a Darwin Core Archive."
- "The MDT is available through a GBIF pilot program."
- "There is a great user guide and example datasets to help you learn how to use the MDT."
---

## The Metabarcoding Data Toolkit (MDT)

- User Guide: <https://docs.gbif-uat.org/mdt-user-guide/en/>
- GBIF-US MDT: <https://mdt.gbif.us/>
- MDT Homepage: <https://mdt.gbif.org/>

<img src="https://docs.gbif-uat.org/mdt-user-guide/img/dg_landing.png" width="500"/>

### What is the MDT?

The Metabarcoding Data Toolkit (MDT) is part of a pilot phase of the GBIF Metabarcoding Data Programme. The MDTs can be used by anybody. GBIF nodes who wish to administer an instance of the MDT can apply for a GBIF hosted MDT. 

> ## Yes!
>
> The Metabarcoding Data Toolkit **can handle DNA metabarcoding datasets** (aka amplicon sequence data) – specifically OTU tables and their associated metadata.
>
{: .keypoints}


> ## No!
>
>
> The MDT **cannot handle**: raw sequencing data (e.g Fastq files), metagenomic/shotgun datasets, specimen barcodes, qPCR
>
{: .caution}


### How does it work?

You can think of the MDT as something like an IPT that is expecting typical outputs from processed metabarcoding (AKA eDNA) data.  As illustrated below, this typically, this will include an OTU table, a taxonomy table, a samples table, representative OTU sequences in FASTA format, and study level metadata.

The MDT is designed to take import that data and help users (1) map it to Darwin Core, (2) create EML metadata, and (3) publish the dataset with GBIF. It has more features that we will cover in the demo.

![Figure 8](https://docs.gbif-uat.org/mdt-user-guide/img/OTU_table_all_files.png)
**Figure 8 from MDT User Guide [[link]](https://docs.gbif-uat.org/mdt-user-guide/en/#fit_data):** *An example OTU_table with OTU IDs linked to the Taxonomy table and Sample IDs linke to the Samples table. OTU_table: sequence read counts of each OTU per sample; Taxonomy: DNA sequences and taxonomy per OTU; Samples Sample metadata per sample; Study (optional): Metadata values applying to all samples and OTUs; Seqs.fasta (optional) OTU sequences in fasta format.*


### Example Dataset

- MDT Sandbox: <https://mdt.gbif-test.org/>
- MDT User Guide Example Dataset 2: <https://docs.gbif-uat.org/mdt-user-guide/en/index.en.html#example2>

<img src="/fig/richard-lin-98SjVezkiY8-unsplash.jpg" width="300"/>

<center>Photo by <a href="https://unsplash.com/@richard7seals?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Richard Lin</a> on <a href="https://unsplash.com/photos/a-rocky-beach-with-a-blue-body-of-water-98SjVezkiY8?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a></center>

<br>

We will use the example dataset provided in the MDT User Guide to demo the MDT. It is a real dataset with COI metabarcoding of DNA extracted from sea water. The dataset has rich metadata and is a good example of a well-documented dataset.  This data was originally published as:

> Shea M M, Boehm A B (2024). COI data from: Environmental DNA metabarcoding differentiates between micro-habitats within the rocky intertidal (Shea & Boehm, 2024). Version 1.5. United States Geological Survey. Occurrence dataset. https://ipt-obis.gbif.us/resource?r=shea_boehm_2024&v=1.5 https://doi.org/10.15468/33artc accessed via GBIF.org on 2025-05-07.

 The example version has been modified slightly from the original dataset.

- Download file: [Example Dataset 2](https://docs.gbif-uat.org/mdt-user-guide/example_data/example_data2.current.en.xlsx).


### Demo
*We're doing a live demo, but this recording of a previous demo by GBIF will be here for future reference:*

<iframe title="vimeo-player" src="https://player.vimeo.com/video/1026872718?h=d0855bfde2#t=44m20s" width="640" height="360" frameborder="0"    allowfullscreen></iframe>