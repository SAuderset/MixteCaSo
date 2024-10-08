# this script subsets and extracts the Mixtec data from the Mixtecan Cognate Database
# current version used: v1.2
# last edited: 2024-10-08

library(pacman)
p_load(here,
       tidyverse)


# read in metadata, cognate sets, protoforms
metadata <- read_tsv("https://raw.githubusercontent.com/SAuderset/MixteCoDB/main/metadata.tsv")
cognates <- read_tsv("https://raw.githubusercontent.com/SAuderset/MixteCoDB/main//mixtecan_cognate_db.tsv")
protoforms <- read_tsv("https://raw.githubusercontent.com/SAuderset/MixteCoDB/main//protoforms.tsv")

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
protoforms_sc <- filter(protoforms, COGIDS %in% cognates_used)

# write new files out
write_tsv(metadata_sc, here("data/metadata.tsv"))
write_tsv(cognates_sc, here("data/cognates.tsv"))
write_tsv(protoforms_sc, here("data/protoforms.tsv"))
