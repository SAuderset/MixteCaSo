# Mixtec Sound Change Database/Cambio de Sonido en el Mixteco (MixteCaSo)

This database provides a comprehensive archive of Mixtec sound changes, coded with a common methodology. The database is interlinked and expandable and provides an up-to-date repository for scholars working on Mixtec and related languages. It serves the wider historical linguistics community by providing a model for managing large data sets in a way that streamlines traditional historical linguistic analysis at the same time as preparing the data for computational and quantitative analysis. We build upon previous studies but also introduce a novel annotation scheme for analyzing sound change in large and complex language groups or families.
It is a work in progress and continuously updated. For use in your own research and citation, please refer to the most recent release archived in Zenodo. The database is available under the Creative Commons Attribution Share Alike 4.0 International license.
Questions, comments, corrections, and the like are most welcome! Please [open an issue](https://github.com/SAuderset/MixteCaSo/issues/new/choose) for that.

The cognate data and protoforms used here are taken from its sister database [MixteCoDB](https://github.com/SAuderset/MixteCoDB).

## MixteCaSo 1.0 and 1.1 - November 2023
The initial creation of the database and its [first public release (1.1)]() is explained in:
* Auderset, Sandra, and Eric W. Campbell. 2024. A Mixtec Sound Change Database. *Journal of Open Humanities Data* 10 (1). https://doi.org/10.5334/johd.184

## MixteCaSo 2.0 - Ocotber 2024
The database now features tone changes across 42 varieties! 
The coding of the tone changes follows the same methodology as those of the segmental changes. It is explained in more detail in:
* Auderset, Sandra. 2024. Rates of change and phylogenetic signal in Mixtec tone. *Language Dynamics and Change* 14 (1). https://doi.org/10.1163/22105832-bja10031 [e-mail me for a copy] 

and in the document tone_standardization.pdf.


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
This file contains the definitions of the segmental sound change variables.
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

#### changes_tones
This file contains the definitions of the tone change variables.
**file structure:**
* FeatureID = unique identifier for each sound change consisting of the prefix Tone plus two digits
* TONE_GROUP = reconstructed tone melody that the change belongs to (if possible to determine)
* SOUND_FROM = reconstructed proto-Mixtec tone (noted with uppercase letters)
* SOUND_TO = contemporary Mixtec tone (in Chao tone numbers)
* ENVIRONMENT_LEFT / ENVIRONMENT_RIGHT: conditioning environments of the sound change
* ProseDescription = a prose description of the tone change (for easier reference)
* Basic = indicates whether the set is basic or modified (according to Dürr 1987)
* NOTE = comments and explanations

#### orthography_to_ipa.pdf
file that explains the general principles and language-specific details of the conversion from source orthographies to IPA with respect to segments

#### tone_standardization.pdf
file that explains the general principles and language-specific details of the conversion from source orthographies to IPA with respect to tone


### scripts
R scripts to perform simple database tasks.
#### subset_mixtecodb: 
subsets the Mixtecan Cognate database to the sample languages for the analysis of sound changes
#### paper_JoHD
script that produces plots and overviews for the JoHD paper introducing the database


### variables
#### variables_segments
This file contains the coding of the segmental changes. For each sample language and each identified sound change, it indicates whether this change is present, absent, or NA. Each column is a change (labeled by its ID) and each row is a doculect.

#### variables_tones
This file contains the coding of the tone changes. For each sample language and each identified sound change, it indicates whether this change is present, absent, or NA. Each column is a change (labeled by its ID) and each row is a doculect.


[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
