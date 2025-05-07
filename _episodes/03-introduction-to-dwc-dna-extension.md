---
title: "Introduction to DwC DNA extension"
teaching: 10
exercises: 0
questions:
- "How are The Carpentries lessons formatted?"
objectives:
- "Explain the header of each episode."
- "Explain the overall structure of each episode."
- "Explain why blockquotes are used to format parts of episodes."
- "Explain the use of code blocks in episodes."
keypoints:
- "Lesson episodes are stored in _episodes/dd-subject.md."
- "Each episode's title must include a title, time estimates, motivating questions, lesson objectives, and key points."
- "Episodes should not use sub-titles or HTML layout."
- "Code blocks can have the source, regular output, or error class."
- "Special sections are formatted as blockquotes that open with a level-2 header and close with a class identifier."
- "Special sections may be callouts or challenges; other styles are used by the template itself."
math: true
---

## What is the DwC DNA Extension and Why is it Important?

The DNA Derived Data extension is a component of the **Darwin Core standard**, which is widely used for sharing biodiversity data. Its primary purpose is to enable the publication of information derived from DNA, such as sequences obtained from environmental samples (eDNA) or bulk samples, or detections made via methods like qPCR or ddPCR.

Publishing DNA-derived data through platforms like GBIF and OBIS is crucial because it allows these data to be **discoverable, accessible, interoperable, and reusable** alongside other types of biodiversity information, such as museum specimens or field observations. This integration helps to document taxon occurrences, even for organisms that are difficult to observe physically. By standardizing the reporting of DNA-derived occurrences, regardless of whether the detected species have formal scientific names, the data becomes more **reproducible and comparable**. This is particularly important for characterizing occurrences of the vast number of species that remain undescribed. Openly reporting these data increases their **citability**, highlights taxa relevant for conservation, and contributes to taxonomic and ecological knowledge.

The extension helps to capture detailed information about the **sampling, processing, and bioinformatic methods** used to generate the DNA data. This metadata is essential for users accessing the data to understand how it was produced and evaluate its reliability.

## History and Development

The effort to standardize the publication of DNA-derived data through biodiversity platforms is a collaborative one. A community guide titled **"Publishing DNA-derived data through biodiversity data platforms"** was published by GBIF, OBIS, and other partners to provide guidance on this topic. This guide is supported by the DNA Derived Data extension for Darwin Core.

The extension incorporates terms from the **Minimum Information about any (x) Sequence (MIxS) standard**, developed by the Genomic Standards Consortium (GSC). It also includes fields from the GGBN standard and the MIQE guidelines (minimum information for the publication of quantitative real-time PCR experiments) to accommodate various types of DNA data, including qPCR and ddPCR. This ongoing effort involves groups like the Sustainable DwC-MIxS interoperability task group under TDWG. OBIS has also been developing a bioinformatics pipeline to facilitate the publication of marine DNA data, initially for the PacMAN project, which aims to output DwC-compatible tables including DNA-derived data.

## What Kinds of Data Can It Handle?

The DNA Derived Data extension is designed to handle data from various DNA-based methods used to document taxon occurrences, including:

*   **Environmental DNA (eDNA) and Metabarcoding:** Data derived from sequencing DNA extracted from environmental samples (like water, soil, or air) or bulk samples containing multiple individuals.
*   **Barcoding:** Data where a short, standardized DNA fragment is used to identify an individual organism.
*   **Metagenomics:** Although metabarcoding is used as the primary model, the concepts for publishing sequence-derived diversity data using the extension can apply to metagenomic data, which involves sequencing all DNA in a sample.
*   **Targeted Species Detection (qPCR/ddPCR):** Data resulting from methods like Quantitative Polymerase Chain Reaction (qPCR) or Droplet-Digital Polymerase Chain Reaction (ddPCR), which detect specific DNA sequences using species-specific primers but do not necessarily generate the full DNA sequence of the target.

The sources categorize DNA-derived data into five types for mapping purposes: DNA-derived occurrences (Category I), Enriched occurrences (Category II), Targeted species detection (Category III), Name references (Category IV), and Metadata only (Category V). The DNA Derived Data extension is primarily used for Categories I, II, and III.

## Generally How to Use It

When publishing DNA-derived data using the DwC standard, the data should generally be published with the **Occurrence core**. This approach is currently recommended because it allows occurrence-level data, such as processed barcode sequences, to be linked effectively. The DNA Derived Data extension file is then **linked to the Occurrence core** data table using the `occurrenceID` and/or `eventID` fields. Datasets may also include an **extendedMeasurementOrFact (eMoF) extension file** for additional measurements, such as environmental parameters like temperature or salinity.

Data is often initially spread across multiple files (e.g., OTU-table, taxonomy table, sample information table, .fasta file). For publishing, this data needs to be formatted into a **"long format"**, where each unique sequence by sample combination is considered a single occurrence, occupying one row in the data table.

### Key Darwin Core Terms

When compiling DNA-derived datasets, several terms in the Occurrence core table are particularly important.

For **Metabarcoding and Barcoding** data (Categories I & II):

*   **`basisOfRecord`**: For DNA-derived occurrences (Category I), this should be `MaterialSample`. For enriched occurrences (Category II), use `PreservedSpecimen` or `LivingSpecimen` as appropriate.
*   **`organismQuantity`**: Records the **amount of a unique sequence** (e.g., number of reads) in a specific sample. For ddPCR, it refers to the number of positive partitions.
*   **`organismQuantityType`**: Should be populated with "**DNA sequence reads**" for sequencing studies. For ddPCR, it's the partition type (e.g., "ddPCR droplets").
*   **`sampleSizeValue`**: Records the **total number of all reads** in a specific sample for sequencing studies. For ddPCR, it's the number of accepted partitions.
*   **`sampleSizeUnit`**: Should be "**DNA sequence reads**" for sequencing studies. For ddPCR, it's the partition type.
*   **`associatedSequences`**: Contains a reference (like a URL or ID) to where genetic sequence information associated with the occurrence can be found, such as a public repository (e.g., NCBI BioProject). It is recommended that links include the domain name.
*   **`identificationRemarks`**: Used to document the taxonomic identification process, including the reference database used and confidence level. This information is often also recorded in the DNA Derived Data extension fields `otu_seq_comp_appr` and `otu_db`.
*   **`identificationReferences`**: Should include a link to the bioinformatic pipeline or publication detailing the identification process.
*   **`taxonConceptID`**: Can include a taxonomic ID from a reference database that is not a Linnean name (e.g., NCBI:txid9771).
*   **`verbatimIdentification`**: Can record the original name or identifier used.
*   **`samplingProtocol`**: Can contain a description or link to the methods used to obtain the sample.
*   **`materialSampleID`**: An identifier for the physical material sample. If available, use a biosample ID from a nucleotide archive.

For **qPCR/ddPCR** data (Category III), in addition to many of the above, specific attention is paid to quantity fields and methods. `scientificName` is a required term for both metabarcoding and qPCR data, along with higher taxonomy fields. OBIS, specifically, recommends using the scientific name as listed in the WoRMS database, which differs slightly from GBIF's recommendation for sequence-derived data.

### Key DNA Derived Data Extension Terms

The DNA Derived Data extension is where most of the specific molecular metadata is captured.

For **Metabarcoding** data (Categories I & II):

*   **`DNA_sequence`**: **The most important field**. This is where the actual ASV/OTU sequence is recorded. This allows for searching and future reinterpretation as reference databases improve. Note: This field is **not used** for qPCR/ddPCR data.
*   **`sop`**: Standard operating procedures used, ideally referenced with a link (e.g., protocols.io).
*   **`target_gene`** and **`target_subfragment`**: Identify the specific genetic region targeted (e.g., 16S rRNA, 18S V9 region).
*   **`pcr_primer_forward`**, **`pcr_primer_reverse`**, **`pcr_primer_name_forward`**, **`pcr_primer_name_reverse`**, **`pcr_primer_reference`**: Details about the PCR primers used.
*   **`pcr_cond`**: PCR conditions.
*   **`annealingTemp`** and **`annealinTempUnit`**: The annealing temperature used in PCR.
*   **`ampliconSize`**: The size of the amplified DNA fragment.
*   **`env_broad_scale`**, **`env_local_scale`**, **`env_medium`**: Describe the environmental system from which the sample was extracted.
*   **`lib_layout`**: Describes the library layout (e.g., paired-end).
*   **`seq_meth`**: Sequencing method used (e.g., Illumina MiSeq).
*   **`otu_class_appr`**, **`otu_seq_comp_appr`**, **`otu_db`**: Describe the methods and databases used for taxonomic annotation (e.g., DADA2, BLAST, Genbank nr).

For **qPCR/ddPCR** data (Category III), many of the fields related to PCR and environmental context are still important and highly recommended, such as `sop`, `target_gene`, `pcr_primer` fields, and `env_` fields. Additional terms related to the DNA sample before qPCR analysis (e.g., `concentration`, `ratioOfAbsorbance260_280`) and qPCR-specific terms (e.g., `quantificationCycle`) are also available.

### Handling Unknown Sequences

Even sequences that cannot be fully characterized or assigned to a known taxon should be recorded. For unknown sequences, it is required to populate the `scientificName` field with "**Incertae sedis**" or the lowest known taxonomic rank. The `scientificNameID` should be populated accordingly; for Incertae sedis, it should be `urn:lsid:marinespecies.org:taxname:12` for OBIS data. It is also recommended to use `verbatimIdentification` for the originally documented name. Crucially, **all sequences, including uncharacterized ones, should be recorded** in the `DNA_sequence` field to allow for future identification as reference databases improve.

### Publishing the Data

Once the data tables are formatted and mapped, they are typically published through an IPT (Integrated Publishing Toolkit). This involves uploading the source files, mapping them to the Darwin Core Occurrence core terms, and then mapping to the DNA Derived Data extension terms. The extension must first be installed by the IPT administrator.

While the Darwin Core Archive (DwC-A) with the Occurrence core and extensions is the current standard, the structure for publishing DNA-derived data may evolve to better handle the hierarchical nature of samples and occurrences derived from a single event. Regardless of format, publishing DNA-derived data makes it available through biodiversity data platforms, often with a **Digital Object Identifier (DOI)**, which facilitates data citation and credits data originators.

In summary, the DwC DNA Derived Data extension provides a structured framework for standardizing and publishing diverse types of DNA-based biodiversity data, ensuring they can be effectively discovered, integrated, and reused by the wider scientific community.