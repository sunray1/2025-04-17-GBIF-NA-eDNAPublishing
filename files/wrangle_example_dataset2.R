#Wrangle example dataset 2, from the MDT user guide, into a format that can be practice material for the IPT.
# https://docs.gbif-uat.org/mdt-user-guide/en/index.en.html#example2

# read in example dataset

t <- tempdir()
download.file(url = 'https://docs.gbif-uat.org/mdt-user-guide/example_data/example_data2.current.en.xlsx', destfile = paste0(t, 'example_data2.current.en.xlsx'))

otu_table <- readxl::read_xlsx(paste0(t, 'example_data2.current.en.xlsx'), 
                               sheet = 'OTU_table')

taxonomy <- readxl::read_xlsx(paste0(t, 'example_data2.current.en.xlsx'), 
                               sheet = 'Taxonomy')

samples <- readxl::read_xlsx(paste0(t, 'example_data2.current.en.xlsx'), 
                               sheet = 'Samples')

study <- readxl::read_xlsx(paste0(t, 'example_data2.current.en.xlsx'), 
                               sheet = 'Study')

# wrangle into a single table ---------------------------------------------

library(tidyverse)

#do some finagling to make names match published data
otu_table <- otu_table %>% 
  mutate(ASV_id = str_replace(string = ...1, pattern = 'merged', replacement = 'forward')) %>% 
  select(-NEG, -...1) %>%
  pivot_longer(names_to = 'sample_id', values_to = 'read_count', cols = -ASV_id) %>%
  glimpse()

taxonomy <- taxonomy %>% 
  mutate(ASV_id = str_replace(string = id, pattern = 'merged', replacement = 'forward')) %>% 
  select(-id)

samples <- samples %>% rename(sample_id = id)

study <- study %>% 
  pivot_wider(names_from = term, values_from = value)

#join tables

d <- left_join(samples, otu_table) %>% 
  left_join(., taxonomy) %>% 
  bind_cols(., study) %>% 
  select(sort(names(.)))

glimpse(d)

# add total read per sample
d <- d %>% 
  group_by(Sample_Name) %>% 
  mutate(total_sample_reads = sum(read_count)) %>% 
  ungroup()

#write out first 1e4 lines to CSV
d %>% 
  slice_head(n = 1e5) %>% 
  write_csv(file = 'DNA_example_2_for_IPT.csv', append = FALSE)


# split into occurrence and dna tables ------------------------------------

#occ
d %>%
  select(
    Accession_biosamples,
    # amplicationReactionVolumeUnit,
    # amplificationReactionVolume,
    # annealingTemp,
    # annealingTempUnit,
    associatedSequences,
    ASV_id,
    class,
    # env_broad_scale,
    # env_local_scale,
    # env_medium,
    eventDate,
    family,
    genus,
    geodeticDatum,
    kingdom,
    Latitude,
    # lib_layout,
    locationID,
    Longitude,
    lsid,
    # nucl_acid_amp,
    # nucl_acid_ext,
    order,
    # otu_db,
    # pcr_primer_forward,
    # pcr_primer_name_forward,
    # pcr_primer_name_reverse,
    # pcr_primer_reverse,
    phylum,
    project_name,
    rank,
    read_count,
    salinity,
    # samp_collec_method,
    # samp_vol_we_dna_ext,
    sample_id,
    Sample_Name,
    samplingProtocol,
    scientificname,
    # seq_meth,
    # sequence,
    # size_frac,
    # sop,
    # target_gene,
    # taxonConceptID,
    temperature,
    verbatimEventDate,
    verbatimIdentification,
    total_sample_reads
  )  %>% 
  slice_head(n = 1e5) %>% 
  write_csv(file = 'DNA_example_2_for_IPT_occ.csv', append = FALSE)

#dna
d %>%
  select(
    # Accession_biosamples,
    amplicationReactionVolumeUnit,
    amplificationReactionVolume,
    annealingTemp,
    annealingTempUnit,
    # associatedSequences,
    ASV_id,
    # class,
    env_broad_scale,
    env_local_scale,
    env_medium,
    # eventDate,
    # family,
    # genus,
    # geodeticDatum,
    # kingdom,
    # Latitude,
    lib_layout,
    # locationID,
    # Longitude,
    # lsid,
    nucl_acid_amp,
    nucl_acid_ext,
    # order,
    otu_db,
    pcr_primer_forward,
    pcr_primer_name_forward,
    pcr_primer_name_reverse,
    pcr_primer_reverse,
    # phylum,
    # project_name,
    # rank,
    # read_count,
    # salinity,
    # samp_collec_method,
    # samp_vol_we_dna_ext,
    sample_id,
    Sample_Name,
    # samplingProtocol,
    # scientificname,
    seq_meth,
    sequence,
    size_frac,
    sop,
    target_gene,
    taxonConceptID,
    # temperature,
    # verbatimEventDate,
    # verbatimIdentification,
    # total_sample_reads
  )  %>% 
  slice_head(n = 1e5) %>% 
  write_csv(file = 'DNA_example_2_for_IPT_dna.csv', append = FALSE)


