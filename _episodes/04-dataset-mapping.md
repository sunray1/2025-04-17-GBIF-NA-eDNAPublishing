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

## Introduction to possible structures

![](/fig/DwC-A_model.jpg){: width="600px" height="auto" style="float: left;" }

{: style="clear: both;" }

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