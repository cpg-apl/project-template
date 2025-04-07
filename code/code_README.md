# CPG-APL `/code` README

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

The `/code/` directory contains all scripts and notebooks used in data preparation, analysis, modeling, and visualization.

This includes:
- Data loading and cleaning scripts  
- Exploratory data analysis (EDA)  
- Statistical models  
- Code to generate tables or figures  
- Helper or utility functions

> ⚠️ **Important:** In the final deposit, there should be **ONE** `main.R` script that calls all other programs. A template `main.R` script is included.

## Filename Nomenclature

A consistent naming convention helps keep your workflow organized and minimizes confusion or broken links across the project.

### General Naming Rules

1. **Use lowercase only**

   - ✅ `utils.R`  
   - ❌ `Utils.R`, `UTILS.R`

2. **Use underscores `_` instead of spaces or dashes `-`**

   - ✅ `data_cleaning.R`  
   - ❌ `Data Cleaning.R`, `data-cleaning.R`

3. **Make names meaningful**

   - ✅ `build_stage1.R`, `build_stage2.R`, `build_stage3.R`  
   - ❌ `b_s1.R`, `b2.R`, `final_final_REAL.R`

4. **Keep names stable**

   - Once filenames are in use in your scripts, avoid renaming them unless absolutely necessary.

### Ordering Files

Use numeric prefixes to indicate execution order where appropriate:

```
/code/
├── 01_load.R
├── 02_clean.R
├── 03_analysis.R
├── 04_figures.R
```

You may use dashes `-` after numeric prefixes to separate the stage from the description:
- ✅ `01-load_data.R`
- ✅ `02-cleaning.R`

## Recommended File Organization

We suggest structuring your `/code` directory by major stages of your workflow:

```
/code/
├── 01_load.R         # Load data
├── 02_clean.R        # Clean and preprocess
├── 03_analysis.R     # Core modeling or statistical analysis
├── 04_figures.R      # Visualizations and tables
└── utils.R           # Reusable helper functions
```

> 💡 **Tip:** `utils.R` is a common place to store functions used across multiple scripts. This helps keep code modular and easier to maintain.

## Further Guidelines

- Use **clear, descriptive function and variable names**.
- Include **headers and comments** in scripts to explain logic and purpose.
- Use **relative paths** (e.g., `../data/raw/`) to ensure code runs across systems.
- Avoid storing intermediate or output datasets in this folder — use `/data/` or add them to `.gitignore` if temporary.

## Typical File Types

| File Type         | Description |
|------------------|-------------|
| `.R`, `.Rmd`, `.qmd` | R scripts, R Markdown, and Quarto documents for analysis |
| `.py`, `.ipynb`      | Python scripts or Jupyter notebooks (if used) |
| `.do`, `.ado`        | Stata do-files or custom Stata commands |
| `.sh`                | Shell scripts for automation |
| `.txt`, `.json`, `.yaml` | Configuration or parameter files |

> ⚠️ **Important:** Never commit sensitive information like credentials, API keys, or personal identifiers to this folder or any part of the repository.

## Quarto (`.qmd`) Files in Exploration & Testing

### What is a `.qmd` File?

A `.qmd` file is a Quarto markdown file that allows you to combine code, text, and outputs (e.g., figures and tables) in a single document. Quarto is an open-source tool that supports multiple languages, including R, Python, and Julia. It’s great for dynamically combining code with rich text to generate reports, analyses, or presentations.

### When to Use `.qmd` Files

- **Exploration & Testing:**  
   `.qmd` files are excellent during the **exploration** or **testing** phases of your project. They allow you to combine narrative, code, and outputs (like tables and plots) in a single document. This makes them ideal for:
   - Exploratory Data Analysis (EDA)
   - Prototyping models or hypotheses
   - Documenting preliminary results with embedded code to explain your process.

   Example use cases:
   - **EDA:** Load data, inspect basic statistics, visualize distributions, and test hypotheses.
   - **Prototyping models:** Build models quickly, visualize results, and adjust parameters based on outputs.
   - **Drafting reports:** Write a draft of findings and methodologies alongside the results, making it easier to share your process with collaborators.

- **Testing Ideas:**  
   If you are testing different modeling techniques or analyzing new hypotheses, `.qmd` files let you test various approaches and capture results side-by-side with explanations.

### When Not to Use `.qmd` Files

- **Production or Finalized Code:**  
   Once your analysis is ready for production or replication purposes, it’s better to switch to `.R` or `.py` scripts. These files are more suitable for integration into automated workflows (e.g., running in batch or on a schedule) and are easier to maintain for reproducibility.

> ⚠️ **If Using Quarto:** Keep `.qmd` files organized in subdirectories for clarity, especially as they accumulate over the course of a project. For example:
> ```
> /code/
>├── 01_load.R
>├── 02_clean.R
>├── 03_analysis.R
>├── 04_figures.R
>├── workspace/
>│   ├── eda.qmd
>│   └── model_testing.qmd
>└── utils.R
> ```