# this script subsets and extracts the Mixtec data from the Mixtecan Cognate Database

library(pacman)
devtools::install_github("ropensci/bib2df")
p_load(bib2df,
       here,
       RefManageR,
       tidyverse)


# read in metadata, cognate sets, and sources
options(encoding="UTF-8")
sources <- bib2df("https://raw.githubusercontent.com/SAuderset/MixteCoDB/main/sources.bib")

metadata <- read_tsv("https://raw.githubusercontent.com/SAuderset/MixteCoDB/main/metadata.tsv")
cognates <- read_tsv("https://raw.githubusercontent.com/SAuderset/MixteCoDB/main/mixtecan_cognate_db.tsv")

# create vector of languages coded for sound changes
segment_sample <- read_tsv(here("variables/variables_segments.tsv")) %>%
  pull(DOCULECT)

# subset metadata, cognate db, and sources to only contain data on sample languages
metadata_sc <- filter(metadata, DOCULECT %in% segment_sample)
cognates_sc <- filter(cognates, DOCULECT %in% segment_sample)
# create vector of bibkeys used
sources_sample <- metadata_sc %>%
  separate_rows(SOURCE, sep = "; ") %>%
  pull(unique(SOURCE))
sources_sc <- filter(sources, BIBTEXKEY %in% sources_sample)

# write new files out
write_tsv(metadata_sc, here("data/metadata.tsv"))
write_tsv(cognates_sc, here("data/cognates.tsv"))
df2bib(sources_sc, here("data/sources_subset.bib"))
