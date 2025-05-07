---
title: "The IPT and MDT"
teaching: 60
exercises: 0
questions:
- "What are the IPT and MDT?"
- "How do you use them to publish metabarcoding data?"
objectives:
- "Be able to explain what the IPT and MDT are"
- "Know how to find and use guidance for the IPT and MDT"
keypoints:
- "The IPT is a tool for turning data into a Darwin Core Archive. You can include the DNA derived data extension in the Darwin Core Archive."
- "The IPT has an excellent manual that can be used in combination with the DNA Publishing Guide for self-teaching."
- "The MDT is a tool for turning typical metabarcoding outputs into a Darwin Core Archive."
- "The MDT is available through a GBIF pilot program."
- "There is a great user guide and example datasets to help you learn how to use the MDT."
---

## The Integrated Publishing Toolkit (IPT)

- User Guide: <https://ipt.gbif.org/manual/en/ipt/latest/>
- DNA Derived Data Publishing Guide: <https://doi.org/10.35035/doc-vf1a-nr22>

## What is the IPT?

The Integrated Publishing Toolkit (IPT) is an open source web application that helps users create and publish Darwin Core Archives (DwC-A) to GBIF. In the context of publishing DNA-derived data, this means that ayn occurrence data that includes information relevant to the DNA-derived data extension can be uploaded, mapped to Darwin Core, and published to GBIF.

> ## Yes!
>
> The IPT **can handle DNA barcoding, metabarcoding datasets, metagenomic, qPCR** and other data types. But it may require some data wrangling to align the data with the Darin Core and EML standards.
>
{: .keypoints}


> ## No!
>
>
> The IPT **cannot handle**: raw sequencing data (e.g Fastq files), OTU tables in a community matrix format or FASTA files. This is because it is a general tool for producing DwC-A. The MDT (described below) is more appropriate for wrangling and publishing typical outputs from metabarcoding studies.
>
{: .caution}

### How does it work?

You can think of the IPT as a program, like MS Excel. Just like Excel produces spreadsheets and workbooks, the IPT produces Darwin Core Archives and allows you to register (i.e. publish) that file with GBIF and other networks. A typical workflow includes:

<img src="https://ipt.gbif.org/manual/en/ipt/latest/_images/ipt2/flow-all.png">

Transforming and mapping your DNA data to Darwin Core is best guided by:

> Abarenkov K, Andersson AF, Bissett A, Finstad AG, Fossøy F, Grosjean M, Hope M, Jeppesen TS, Kõljalg U, Lundin D, Nilsson RN, Prager M, Provoost P, Schigel D, Suominen S, Svenningsen C & Frøslev TG (2023) Publishing DNA-derived data through biodiversity data platforms, v1.3. Copenhagen: GBIF Secretariat. https://doi.org/10.35035/doc-vf1a-nr22.


There are a variety of tools you might use to wrangle your data, including [OpenRefine](https://openrefine.org/), [R](https://www.r-project.org/), and [Python](https://www.python.org/).


### Example Dataset

- IPT Example Dataset: *Link TBD*

We will use an example dataset to demo the IPT. It is a slightly modified verion of real dataset with COI metabarcoding of DNA extracted from sea water. The dataset has rich metadata and is a good example of a well-documented dataset.  This data was originally published as:

> Shea M M, Boehm A B (2024). COI data from: Environmental DNA metabarcoding differentiates between micro-habitats within the rocky intertidal (Shea & Boehm, 2024). Version 1.5. United States Geological Survey. Occurrence dataset. https://ipt-obis.gbif.us/resource?r=shea_boehm_2024&v=1.5 https://doi.org/10.15468/33artc accessed via GBIF.org on 2025-05-07.

You can download the files: 
- Download file: [Example Dataset 2](https://docs.gbif-uat.org/mdt-user-guide/example_data/example_data2.current.en.xlsx).



## The Metabarcoding Data Toolkit (MDT)

- User Guide: <https://docs.gbif-uat.org/mdt-user-guide/en/>
- GBIF-US MDT: <https://mdt.gbif.us/>
- MDT Homepage: <https://mdt.gbif.org/>

<img src="https://docs.gbif-uat.org/mdt-user-guide/img/dg_landing.png" width="500"/>

## What is the MDT?

The Metabarcoding Data Toolkit (MDT) is an open source web application developed as part of a pilot phase of the GBIF Metabarcoding Data Programme. It helps users publish DNA-derived data to GBIF.  The MDTs can be used by anybody. GBIF nodes who wish to administer an instance of the MDT can apply for a GBIF hosted MDT. 

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