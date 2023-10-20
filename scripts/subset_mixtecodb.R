# this script subsets and extracts the Mixtec data from the Mixtecan Cognate Database v1.1

library(pacman)
p_load(here,
       rbibutils,
       tidyverse)


# read in metadata, cognate sets, protoforms
metadata <- read_tsv(here("data/MixteCoDB-1.1/metadata.tsv"))
cognates <- read_tsv(here("data/MixteCoDB-1.1/mixtecan_cognate_db.tsv"))
protoforms <- read_tsv(here("data/MixteCoDB-1.1/protoforms.tsv"))

# create vector of languages coded for sound changes
segment_sample <- read_tsv(here("variables/variables_segments.tsv")) %>%
  pull(DOCULECT)

# subset metadata, cognate db to only contain data on sample languages
metadata_sc <- filter(metadata, DOCULECT %in% segment_sample)
cognates_sc <- filter(cognates, DOCULECT %in% segment_sample)

# create vector of cognate IDs used in data set
cognates_used <- cognates_sc %>%
  distinct(COGIDS) %>%
  pull()

# subset protoforms file
protoforms_sc <- filter(protoforms, COGIDS_BROAD %in% cognates_used)

# write new files out
write_tsv(metadata_sc, here("data/metadata.tsv"))
write_tsv(cognates_sc, here("data/cognates.tsv"))
write_tsv(protoforms_sc, here("data/protoforms.tsv"))
