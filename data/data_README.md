# CPG-APL `/data` README

## Summary

From the APL generic directory structure:

```
cpg-123/
├── data/
│   ├── raw/
│   ├── clean/
│   └── final/
├── code/
├── article/
└── README.md
```

The `/data/` directory contains all datasets used in the project. It is organized into three subfolders:

- `/raw/`: Contains unprocessed, original datasets as received or collected.  
- `/clean/`: Contains datasets that have been cleaned, processed, or transformed for analysis.  
- `/final/`: Contains the final version of datasets, typically ready for analysis or publication.

## Directory Structure

```
/data/
├── raw/          # Raw, unprocessed data files
├── clean/        # Cleaned and preprocessed data files
└── final/        # Final datasets, ready for analysis or publication
```

### `/raw/`
- **Purpose:** This folder should contain the raw data files as received or collected. These files should be untouched to preserve the original source of the data.
- **Examples:**
  - Raw survey data in CSV or Excel format
  - Raw JSON or API dump files
  - Any other original data sources
- **Important:** Do not modify any files in this folder. If the data needs to be cleaned, it should be copied into `/clean/` for further processing.

### `/clean/`
- **Purpose:** This folder contains cleaned or preprocessed data files. These are the datasets you will use for analysis after cleaning or transforming the raw data.
- **Examples:**
  - Data files with missing values handled
  - Data with duplicates removed or outliers treated
  - Transformed or encoded data, such as categorical variables encoded as dummy variables
- **Important:** Keep these files in a clean, reusable state for further analysis. If data is modified in any way, it should be saved as a new file in this directory (never overwrite).

### `/final/`
- **Purpose:** This folder contains the final datasets, typically ready for modeling, analysis, or publication. These datasets are finalized and should not require further modifications.
- **Examples:**
  - The final dataset used in the manuscript for analysis
  - Aggregated or summarized datasets ready for presentation or publication
- **Important:** Keep track of any revisions and document them. These are the datasets that will be referenced in your final project deliverables.

## Filename Nomenclature

A consistent naming convention helps keep your workflow organized and minimizes confusion or broken links across the project.

### General Naming Rules

1. **Use lowercase only**

   - ✅ `dataset.csv`  
   - ❌ `Dataset.csv`, `DATASET.csv`

2. **Use underscores `_` instead of spaces or dashes `-`**

   - ✅ `data_clean.csv`  
   - ❌ `Data Clean.csv`, `data-clean.csv`

3. **Make names meaningful**

   - ✅ `race_all.csv`, `race_women.csv`, `race_kentucky.csv`  
   - ❌ `r_a.csv`, `r1.csv`, `final_final_REAL.csv`

4. **Keep names stable**

   - Once filenames are in use in your scripts, avoid renaming them unless absolutely necessary.

## Data Sharing & Collaboration

- **Collaborators:** When sharing data with others, always share raw data in its original form (stored in `/raw/`) and share cleaned or final datasets from `/clean/` and `/final/`.
- **Data Sources:** Ensure you have proper documentation or metadata for any dataset, especially raw data. If datasets are obtained from external sources, include a reference to the source in the relevant script or metadata file.
  - Place metadata files (e.g., licenses) in the same directory as the data file.

> ⚠️ **Important:**  
> - **Do not** commit sensitive data (e.g., personally identifiable information, confidential data) to this repository. If necessary, anonymize or obfuscate sensitive data before storing or sharing.
> - Use `.gitignore` to exclude large or sensitive files from version control.