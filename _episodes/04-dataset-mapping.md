---
title: "Dataset Mapping"
teaching: 30
exercises: 60
questions:
- "How do I map a DNA dataset to Darwin Core?"
objectives:
- "Become familiar with exploring DNA data and mapping it to Darwin Core terms."
- "If you brought a dataset, begin to map it to Darwin Core."
keypoints:
- "No two datasets are the same, you should think about your dataset before you start mapping"
- "There are hundreds of Darwin Core terms, lean on the guides when you're mapping your dataset"
math: true
---

## Introduction

We're going to map a barcoding dataset as a group, and then have time to work individually on data your brought with you, or an example metabarcoding dataset.  First let's make sure we understand the difference between enriched occurrences (e.g. barcoding), DNA-derived occurrences (e.g. metabarcoding), and targeted species detection (e.g. qPCR). [Sections 2.2.1](https://docs.gbif.org/publishing-dna-derived-data/en/#mapping-metabarcoding-edna-and-barcoding-data) and [2.2.2](https://docs.gbif.org/publishing-dna-derived-data/en/#mapping-ddpcr-qpcr-data) of the guide has a table with recommendations for mapping both types to Darwin Core and the DNA extension.

## Enriched Occurrence (barcoding)

![Conceptual model of a barcoding analysis]{{ page.root }}/fig/barcoding_cartoon.jpg){: .image-with-shadow width="800px"}

In the GBIF-OBIS guide to DNA publishing, this is described as '**Category II**':

> [2.1.2. Category II: Enriched occurrences](https://docs.gbif.org/publishing-dna-derived-data/en/#category-ii)
If some genetic material is, or can be, associated with an observation or a specimen, we will categorize this type of data as “enriched occurrences”. In this context, the sequences are not the only evidence of occurrences. One can always trace the information back to a vouchered specimen or observed organism. This category includes barcoding datasets and some DNA metabarcoding datasets with reference material for example. For more guidance on barcoding, follow [Centre for Biodiversity Genomics, University of Guelph (2021)](https://www.cbd.int/doc/publications/cbd-ts-94-en.pdf).


> ## Explore this occurrence. What information is different, or extra, compared to a typical museum specimen published through GBIF?
>
> Here is an [example enriched occurrence](https://www.gbif.org/occurrence/1423744013) from the dataset, [Chironomid Specimen records in the Chironomid DNA Barcode Database](https://www.gbif.org/dataset/02cc981e-d1d8-4ea6-9db5-dfb73acca024). 
>
{: .challenge}

## DNA-derived occurrences (e.g. metabarcoding AKA eDNA)

![Conceptual model of a metabarcoding analysis]{{ page.root }}/fig/metabarcoding_cartoon.jpg){: .image-with-shadow width="800px"}

In the GBIF-OBIS guide to DNA publishing, this is described as '**Category I**':

> [2.1.1. Category I: DNA-derived occurrences](https://docs.gbif.org/publishing-dna-derived-data/en/#category-i)
This category concerns data where a DNA sequence or detection through PCR is the only evidence for the presence of a given organism or community. In other words, the data cannot be traced back to an observable specimen. This is the case for many metagenomics, metabarcoding and eDNA studies.

Depending on what you're used to, this may seem quite different from other biological data types. 

> ## Explore this occurrence. What information is different, or extra, compared to the enriched occurrence you explored above?
>
> Here is an [example DNA-derived occurrence](https://www.gbif.org/occurrence/4537288373) from the dataset, [COI data from: Environmental DNA metabarcoding differentiates between micro-habitats within the rocky intertidal (Shea & Boehm, 2024)](https://www.gbif.org/dataset/9358fbd7-cfd0-4eab-99fa-0934396a0529). 
>
{: .challenge}

<div style="clear: both;"></div>

## Targeted Species Detection (e.g. qPCR)

![Conceptual model of a qPCR analysis]{{ page.root }}/fig/qPCR_cartoon.jpg){: .image-with-shadow width="800px"}

In the GBIF-OBIS guide to DNA publishing, this is described as '**Category III**':

> [2.1.3. Category III: Targeted species detection (qPCR/ddPCR)](https://docs.gbif.org/publishing-dna-derived-data/en/#category-iii)
This category concerns data where a specific (qPCR/ddPCR) assay is used to detect the presence (or absence) of a DNA sequence specific to the target organism in an environmental sample. In this case the occurrence record may not even contain sequence data, as it is the process itself that determines the occurrence. With qPCR/ddPCR analyses for targeted species detection, many studies also report absence of that specific species for a given sample. Absence data is highly dependent on the detection limit of the specific assay, as well as field and lab protocols. As for DNA-metabarcoding data there is an issue of both false negatives and false positives, and it is important that sufficient information is reported for evaluating the records.

Depending on what you're used to, this may seem quite different from other biological data types. 

> ## Explore this occurrence. What information is different, or extra, compared to the enriched occurrence you explored above?
>
> Here is an [example targetted species detection occurrence](https://www.gbif.org/occurrence/4402051344) from the dataset, [Kenai National Wildlife Refuge Invasive Fish Surveys - 2023](https://www.gbif.org/dataset/b88e40a8-c39e-4f8f-962a-7f6d93a977a4). 
>
{: .challenge}

<div style="clear: both;"></div>

# How to structure your Darwin Core Archive?

The structure of your data and/or experiment will help you decide the best structure for publishing (e.g. which core to use, which extensions to use, how many tables do you need?). In case you're not very familiar with Darwin Core Archives, we review possible structures here.

## Occurrence Core

<img src="/fig/DwC-A_model.jpg" alt="Conceptual model of a Darwin Core Archive (DwC-A) for DNA data using Occurrence Core" style="float: left; margin-right: 15px; width: 600px;">
<p style="margin-top: 200px;">Until recently, Darwin Core Archives (DwC-A) for DNA data had to be structured as an occurrence table and a DNA table. Like any DwC-A, this would include two XML metadata files. Extensions that can be linked to the occurrence core table could also be used.
</p>

<div style="clear: both;"></div>

## Event Core

<img src="/fig/DwC-A_model_with_eventCore.jpg" alt="Conceptual model of a Darwin Core Archive (DwC-A) for DNA data using Event Core" style="float: left; margin-right: 15px; width: 600px;">

<p style="margin-top: 200px;">
Last year, a tweak was made to to the extension to allow Event Core and relevant extensions to be used. However, for today we'll be keeping it simple and only working with an occurrence table and DNA table.</p>

<div style="clear: both;"></div>

## Group Mapping exercise

**Dataset:** Chironomid Specimen records in the Chironomid DNA Barcode Database <https://doi.org/10.15468/hxhow5>



## Individual Mapping Excercise

<!-- This create a tabbed box
-->

<div class="code-tabs">
  <div class="tab-header">
    <button class="tab-link active" data-tab="BYOD">Bring Your Own Data</button>
    <button class="tab-link" data-tab="NDNP">No Data, No Problem!</button>
  </div>

  <div class="tab-content active" data-tab-content="BYOD">
    <p>
    	Try mapping your data to Darwin Core and the DNA Extension. We're hear to discuss and help!
    	<ul>
  			<li><a href="https://dwc.tdwg.org/terms/">Darwin Core Quick Reference Guide</a></li>
  			<li><a href="https://rs.gbif.org/extension/gbif/1.0/dna_derived_data_2024-07-11.xml">DNA derived data extension</a></li>
		</ul>

    </p>
  </div>

  <div class="tab-content" data-tab-content="NDNP">
  	<p>
		Use the example metabarcoding dataset from the MDT User Guide. It is a slightly modified verion of a real dataset with COI metabarcoding of DNA extracted from sea water. The dataset has rich metadata and is a good example of a well-documented dataset.  This data was originally published as:

		<blockquote>
		Shea M M, Boehm A B (2024). COI data from: Environmental DNA metabarcoding differentiates between micro-habitats within the rocky intertidal (Shea & Boehm, 2024). Version 1.5. United States Geological Survey. Occurrence dataset. <a href="https://doi.org/10.15468/33artc accessed via GBIF.org on 2025-05-07">https://doi.org/10.15468/33artc accessed via GBIF.org on 2025-05-07</a>.
		</blockquote>
	</p>
	<p>
		We flattened the data into a single table with the columns in alphabetical order. See if you can:

	<ul>
		<li>map the column headers to DwC and the DNA extension</li>
		<li>split the data into two files: an occurrence table (Darwin Core terms) and a DNA table (DNA extension terms)</li> 
	</ul>

	</p>
	<p>
		Download the file here: <a href="https://sunray1.github.io/2025-05-09-GBIF-NA-DNAPublishing/files/DNA_example_2_for_IPT.csv.zip">https://sunray1.github.io/2025-05-09-GBIF-NA-DNAPublishing/files/DNA_example_2_for_IPT.csv.zip</a>
	</p>
     </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll(".tab-link").forEach(function (button) {
    button.addEventListener("click", function () {
      const tabId = this.getAttribute("data-tab");

      // Remove active classes
      document.querySelectorAll(".tab-link").forEach(btn => btn.classList.remove("active"));
      document.querySelectorAll(".tab-content").forEach(tab => tab.classList.remove("active"));

      // Add active classes
      this.classList.add("active");
      document.querySelector(`[data-tab-content="${tabId}"]`).classList.add("active");
    });
  });
});
</script>

<style>
.code-tabs {
  border: 1px solid #ccc;
  padding: 1em;
  margin-bottom: 1em;
}
.tab-header {
  display: flex;
  border-bottom: 1px solid #ccc;
  margin-bottom: 1em;
}
.tab-link {
  background: none;
  border: none;
  padding: 0.5em 1em;
  cursor: pointer;
  font-weight: bold;
  border-bottom: 2px solid transparent;
}
.tab-link.active {
  border-bottom: 2px solid #007acc;
}
.tab-content {
  display: none;
}
.tab-content.active {
  display: block;
}
</style>