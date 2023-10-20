# Mixtec Sound Change Database/Cambio de Sonido en el Mixteco (MixteCaSo)

This database provides a comprehensive archive of Mixtec sound changes, coded with a common methodology. It is a work in progress and continuously updated. For use in your own research and citation, please refer to the most recent release archived in Zenodo. The database is available under the Creative Commons Attribution Share Alike 4.0 International license.
Questions, comments, corrections, and the like are most welcome! Please [open an issue](https://github.com/SAuderset/MixteCaSo/issues/new/choose) for that.


## MixteCaSo 1.0
The initial creation of the database, which corresponds to its [first release (1.0)](https://github.com/SAuderset/mixtecan-cognate-database/releases/tag/v1.0) is explained in:
* JOHD


## Folders, files and content
### data
The lexical, cognate coded data, metadata of the sample languages, and information about the sources come from the [Mixtecan Cognate Database](https://github.com/SAuderset/MixteCoDB). They are directly imported from that database and subset with a script that can be found in the scripts folder. For details, please refer to that repository.
#### cognates:
Lexical cognate coded data, that serves as the basis for the analysis. Subset of the Mixtecan Cognate Database.
#### metadata:
Metadata of the sample languages.
#### sources:
Bibliographic information about the sources of the language data.


### definitions:
#### changes_segments
This file contains the definitions of the sound change variables.
**file structure:**
* ID = unique identifier for each sound change containing one upper case letter and two digits
* SOUND_FROM = reconstructed proto-Mixtec sound
* SOUND_TO = contemporary Mixtec sound
* ENVIRONMENT_LEFT / ENVIRONMENT_RIGHT: conditioning environments of the sound change
* NOTE = comments and explanations
* CLASS = whether the change concern a vowel (V) or a consonant (C)
* JosserandSetID = which (if any) of Josserand's correspondence sets represents the same or a very similar change; only applies to vowels; see changes_josserand.tsv

#### changes_josserand
This file contains the definition of the correspondence sets given in Josserand 1983, restated to be as comparable as possible to the way we define the sound changes.
**file structure:**
* JosserandSetID = unique identifier for Josserand's correspondence sets with specific environments
* CORR_SET = number of the correspondence set as given in Josserand 1983
* SUBSET = subdivision by environment as given in Josserand 1983 (indicated there with vertical dashed lines)
* SOUND_FROM = reconstructed proto-Mixtec sound as per Josserand 1983
* SOUND_TO = contemporary Mixtec sounds listed in Josserand 1983
* ENVIRONMENT_LEFT / ENVIRONMENT_RIGHT: environments of the correspondence sets
* JosserandID = identifiers of the items in which the correspondence set is found; numbers correspond to Josserand 1983
* COMP = indicates whether or not the change is comparable to one identified in our study; possible values are 'yes' (it is comparable), no_dr (no, because we have a different reconstruction of the items in question), no_me (no, because we did not inlcude the relevant entries), no_nc (no, because the set does not exhibit a change)
* PRESENT = indicates whether or not the correspondence set is also found in our data (if it is comparable)
* SOURCE = cite key of the source file (Josserand 1983)
* PAGE = page number of correspondence set


### scripts
R scripts to perform simple database tasks.
#### subset_mixtecodb: 
subsets the Mixtecan Cognate database to the sample languages for the sound change study


### variables
#### variables_segments
This file contains the coding of the sound changes. For each sample language and each identified sound change, it indicates whether this change is present, absent, or NA. Each column is a change (labeled by its ID) and each row is a doculect.


[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
