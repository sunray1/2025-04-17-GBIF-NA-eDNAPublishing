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

## What is the Darwin Core DNA Derived Data Extension?

The **DNA Derived Data** extension is a structured set of terms designed to capture information related to DNA sampling, processing, and bioinformatic methods. It incorporates terms from established genomic data standards, including Minimum Information about any (x) Sequence (MIxS), Genomic Standards Consortium (GSC), Genomic Biodiversity Working Group (GGBN), and Minimum Information for Publication of Quantitative Real-Time PCR Experiments (MIQE) guidelines for qPCR and ddPCR data.

Its purpose is to facilitate the publication of DNA related to occurrence data through biodiversity data platforms. By providing a standardized way to describe this type of data, the extension increases its usability beyond its original molecular ecology or phylogenetic context and allows it to be linked with other forms of biodiversity data, including museum specimens and field surveys.

The extension includes many fields that support methodological transparency and lab reproducibility. These fields allow users to report key experimental details such as `contaminationAssessment`, `concentration`, `annealingTemp`, `pcr_analysis_software`, and other parameters relevant to PCR conditions, quantification protocols, and data processing pipelines. This level of detail helps ensure that DNA-derived occurrence data can be interpreted, compared, and reused with confidence across studies and platforms. [The current version of the extension is available here.](http://rs.gbif.org/terms/1.0/DNADerivedData)

> ## Introduction to Darwin Core
>
> Need a quick refresher on Darwin Core? [Check out this nice introduction.](https://dimevil.github.io/croment/19-introduction-darwin-core/index.html)
>
{: .prereq}

> ## What **isn't** the DNA Derived Data Extension?
>
> The DNA Derived Data extension is not intended for storing raw reads, full-length sequences, genome assemblies, or annotations. While it includes a `DNA_sequence` field, this is meant only for short sequences—typically DNA barcodes under ~500 base pairs. Biodiversity data platforms using this extension are not primary archives for genomic data. Instead, all comprehensive sequence data should be deposited in specialized repositories under the [International Nucleotide Sequence Database Collaboration (INSDC)](https://www.insdc.org/), including NCBI and EMBL.
>
{: .caution}

> ## What about `associatedSequences`?
>
> Yes, the Occurrence core includes a field called [`associatedSequences`](https://dwc.tdwg.org/list/#dwc_associatedSequences), part of the MaterialEntity suite of terms. While it *can* be used to reference sequence data, the DNA Derived Data extension is designed to support much more detailed and structured sharing of molecular data.
>
{: .objectives}

## History of the Extension

The **DNA Derived Data** extension and its accompanying guide, *Publishing DNA-derived data through biodiversity data platforms*, emerged in response to the growing need for clearer guidance on publishing molecular biodiversity data in a way that aligns with existing biodiversity data infrastructures. This initiative was catalyzed by conversations at the Biodiversity Next conference in 2019 and carried forward by collaborative work among GBIF, OBIS, the Biodiversity Information Standards (TDWG) [Genomic Biodiversity Working Group](https://www.tdwg.org/community/gbwg/), and the TDWG task group on [Sustainable Darwin Core-MIxS interoperability](https://www.tdwg.org/community/gbwg/mixs/).

The guide and extension were designed to reflect a consensus among DNA-focused communities about how to represent molecular methods and results in biodiversity platforms. Drawing from established standards like [MIxS](https://www.gensc.org/pages/standards-intro.html), [GGBN](https://wiki.ggbn.org/ggbn/GGBN_Data_Standard), and [MIQE](https://doi.org/10.1373/clinchem.2008.112797), contributors identified terms relevant to sample collection, lab processing, and bioinformatic pipelines. These additions enable users to document essential experimental details, while maintaining interoperability with Darwin Core-based systems.

As of now, the extension is in production and actively supported on GBIF and the IPT. **Meanwhile, a [new data model](https://www.gbif.org/new-data-model) under development may reshape how genetic data are integrated and linked across platforms in the future.**

## What Kinds of DNA Data Can It Handle?

The DNA Derived Data extension can be used to standardize occurrence data derived from a broad range of molecular methods, including:

- **Environmental DNA (eDNA):** DNA extracted directly from environmental samples (such as water, soil, or air) without isolating the source organism.
- **Metabarcoding:** Uses universal primers and high-throughput sequencing (HTS/NGS) to amplify and sequence specific DNA markers from mixed samples, allowing simultaneous identification of multiple taxa.
- **Barcoding:** Involves sequencing short, standardized DNA fragments to identify individual organisms. Often used when DNA is linked to a physical specimen or observation.
- **Target capture / hybridization-based enrichment:** Selectively sequences specific genomic regions across many samples, often used in phylogenomics or species delimitation.
- **Whole-genome sequencing (WGS):** Involves sequencing entire genomes. Though full sequences are not stored in the extension, derived occurrences based on genome assemblies or annotations can be described and linked to external repositories.
- **SNP (Single Nucleotide Polymorphism) genotyping:** Detects variation at specific genomic loci, commonly used in population genetics or trait association studies. Occurrence records can reflect detections, genotypes, or clustering results.
- **qPCR / ddPCR (Quantitative / Droplet Digital PCR):** Uses species-specific primers to detect the presence of a target organism's DNA. These methods may not yield sequences but support presence/absence or abundance-based occurrence data.

The extension is designed to handle data derived from both individual organisms and bulk samples. It supports datasets where DNA is linked to physical material (e.g., a museum specimen, tissue, or slide) as well as those based purely on environmental or digital evidence.

> ## What if there are fields I need that are missing?
>
> Get involved in TDWG's [Genomic Biodiversity Interest Group](https://www.tdwg.org/community/gbwg)! You are also welcome to post a question or issue on the [Github](https://github.com/tdwg/gbwg/issues).
>
{: .objectives}

## General Approach to Using the Extension

Publishing DNA-derived data through platforms like GBIF and OBIS involves standardizing your dataset using Darwin Core terms and the DNA Derived Data extension. The widely used format for this is the Darwin Core Archive (DwC-A).

Here's a general overview of the process, keeping in mind your familiarity with Darwin Core and specimen data:

1.  **Data Preparation:** Your raw data, often stored in multiple files (like sequence tables, taxonomy tables, sample information, and sequences), needs to be combined into a single "long format" table where **each row represents a unique sequence-by-sample combination, considered as one occurrence**. For qPCR/ddPCR, each row might represent a targeted detection (or non-detection) for a specific species in a sample.
2.  **Darwin Core Mapping:** You will map the columns in your combined data table to appropriate Darwin Core terms. The current recommendation is to publish DNA-derived data using the **Occurrence core**. Even if your data comes from a single sampling event with many detected sequences, you map these to Occurrence records. This is because the DwC-A structure makes it easiest to link occurrence-specific information, like the DNA sequence, using extensions. You should include an `eventID` for each Occurrence record to indicate which sampling event the occurrence came from.
3.  **Populating the Occurrence Core:** Beyond the standard required terms for Occurrence datasets, you should consider adding specific fields highly relevant to DNA data. Examples include:
    *   `basisOfRecord`: Use "MaterialSample" for DNA-derived occurrences. If the DNA is linked to a specimen, use "PreservedSpecimen" or "LivingSpecimen".
    *   `organismQuantity` and `OrganismQuantityType`: For sequencing data, `organismQuantity` is the number of reads for a specific sequence, and `OrganismQuantityType` is "DNA sequence reads". These represent *relative* abundance within the sample. For ddPCR, `organismQuantity` is the number of positive partitions, and `OrganismQuantityType` is the partition type (e.g., "ddPCR droplets"). For qPCR, it might be the number of gene copies.
    *   `sampleSizeValue` and `sampleSizeUnit`: For sequencing data, `sampleSizeValue` is the total reads in the sample, and `sampleSizeUnit` is "DNA sequence reads". These are needed to calculate relative abundance. For ddPCR, `sampleSizeValue` is the number of accepted partitions. For qPCR, these fields are typically not used for copy numbers.
    *   `associatedSequences`: Provide links or identifiers to where the raw sequence information can be found in public archives.
    *   `materialSampleID`: An identifier for the physical or environmental sample the DNA came from. Use a Biosample ID from a nucleotide archive if available.
    *   `samplingProtocol`: Describes the method used to collect the sample.
    *   `identificationRemarks`: Details on the taxonomic identification process, including the algorithm, reference database used, and confidence level.
    *   `identificationReferences`: Links to the bioinformatic pipeline or publication explaining the identification.
    *   `taxonConceptID`: Can store identifiers from non-Linnean reference databases like BOLD BINs or UNITE SHs.
    *   `verbatimIdentification`: Record the original name documented for the sequence, especially if it's not a standard scientific name.
4.  **Populating the DNA Derived Data Extension:** This is where you add details specific to the DNA processing. Key fields in the extension include:
    *   `DNA_sequence`: **Crucially, for sequencing data, this field contains the actual Amplicon Sequence Variant (ASV) or Operational Taxonomic Unit (OTU) sequence**. This allows future users to re-analyze or compare sequences as reference databases improve. *This field is not used for qPCR/ddPCR data*.
    *   `sop`: Reference to standard operating procedures for sample processing or bioinformatic methods, ideally a link to a documented protocol.
    *   `target_gene` and `target_subfragment`: Specify the genetic region targeted by the primers (e.g., 16S rRNA, 18S V9 region).
    *   `pcr_primer_forward`, `pcr_primer_reverse`, `pcr_primer_name_forward`, `pcr_primer_name_reverse`, `pcr_primer_reference`: Details about the PCR primers used.
    *   `Pcr_cond`, `annealingTemp`: Details about the PCR conditions.
    *   `ampliconSize`: Size of the amplified DNA fragment.
    *   `env_broad_scale`, `env_local_scale`, `env_medium`: Description of the environmental context of the sample, ideally using terms from ontologies like Environment Ontology (ENVO).
    *   `seq_meth`: Sequencing technology used (e.g., Illumina MiSeq).
    *   `otu_class_appr`, `otu_seq_comp_appr`, `otu_db`: Details about the bioinformatic methods and reference databases used for taxonomic assignment.
    *   For qPCR/ddPCR data, additional fields related to DNA concentration, PCR reaction volumes, quantification cycles, and quality metrics (`concentration`, `ratioOfAbsorbance260_230`, etc.) are available and recommended.
5.  **Handling Unknown Sequences:** It's common for DNA studies to find sequences that don't match entries in current reference databases. It is important to publish these sequences as well, as they represent real biodiversity that may be identified later. For such uncharacterized sequences:
    *   Set `scientificName` to "Incertae sedis" or the lowest known taxonomic rank.
    *   For "Incertae sedis", set `scientificNameID` to the specific WoRMS LSID: urn:lsid:marinespecies.org:taxname:12. If a different low rank is used, find the corresponding `scientificNameID`.
    *   Use `verbatimIdentification` to record any original name or description available (e.g., "phototrophic eukaryote").
6.  **Using Identifiers:** Leverage global identifiers whenever possible. This includes DOIs for datasets and publications, Biosample IDs from public nucleotide archives (NCBI SRA, EMBL ENA, DDBJ) for `materialSampleID`, and potentially MD5 checksums of sequences if the full sequence isn't provided. OBIS emphasizes using WoRMS identifiers for `scientificNameID` to maintain a consistent taxonomic backbone.

## Relationship to Raw Sequence Data

Biodiversity data platforms like GBIF and OBIS are not intended to be archives for raw sequence reads. Community expectation is that primary genomic data (raw reads) are first shared through established repositories like the International Nucleotide Sequence Database Collaboration (INSDC) (NCBI SRA, EMBL ENA, DDBJ).

The DwC DNA Derived Data extension helps link the processed occurrence data (like the ASV/OTU sequence and its taxonomic assignment) to the original raw data by using identifiers and links in fields like `associatedSequences` and `materialSampleID` (using Biosample IDs). This ensures that users of the biodiversity platform can trace the data back to its source if needed.
