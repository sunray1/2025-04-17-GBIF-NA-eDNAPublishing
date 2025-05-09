#Wrangle enriched occurrence example dataset into a format that can be practice material for the IPT.

# read in example dataset
library(tidyverse)

t <- tempdir()
download.file(url = 'https://gbif.jp/ipt/archive.do?r=nies_cdbd', 
              destfile = paste0(t, 'nies_cdbd.zip'))

unzip(zipfile = paste0(t, 'nies_cdbd.zip'), exdir = paste0(t, 'nies_cdbd'))

fl <- list.files(path = paste0(t, 'nies_cdbd'), full.names = TRUE)

occ_table <- read_tsv(fl[5])

dna_table <- read_tsv(fl[1])

multimedia_table <- read_tsv(fl[4])


#join all tables
d <- left_join(occ_table, dna_table) %>% 
  left_join(., multimedia_table) %>% 
  select(-id) %>% 
  slice(1)

glimpse(d)

#sort columns alphabetically and write to csv
d %>% 
  select(sort(names(.))) %>% 
  mutate(across(everything(), as.character)) %>% 
  pivot_longer(names_to = 'Term Name', values_to = 'Example Value', cols = everything()) %>% 
  mutate('Occurrence, DNA, or Multimedia?' = '') %>% 
  select('Occurrence, DNA, or Multimedia?', everything()) %>% 
  write_csv(file = 'enriched_occ_mapping_practice.csv')
  