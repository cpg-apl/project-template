# CPG-APL `/article` README

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

`/article/` holds manuscript drafts, figures, tables, bibliographies, and submission materials.  

## Manuscript Workflow & File Management

During the drafting stage, you may write the manuscript using any word processor (e.g., Microsoft Word, Google Docs, etc.).

- If you're using Word or Google Docs, these draft files **do not need to be stored in GitHub**. You can use Google Drive or OneDrive for easier collaboration during drafting.

However, the **final version** of the article must be prepared using **LaTeX**, following **Springer Nature’s LaTeX authoring template**.

### If writing the LaTeX manuscript **locally** (on your computer):
- The Springer template files are included in this repository.
- Use them as the base for your final article.
  
### If using **Overleaf** (online LaTeX editor):
- You can find the Springer Nature template [here](https://www.overleaf.com/latex/templates/springer-nature-latex-template/myxmhdsbzkyd).
- In this case, you may delete the local template files from this directory.

> ⚠️ **Important:** Regardless of your workflow, before submitting the final project:
> - **Delete** any unused or placeholder template materials.
> - **Keep** all files required to compile the final manuscript.
> - If using **Overleaf**, make sure to **download all project files** and push them to the `/article` directory in this repository.

## Template Contents

The LaTeX authoring template (based on Springer Nature’s format) includes the following files and folders:

| Item | Type | Description |
|------|------|-------------|
| `bst/` | Folder | Contains `.bst` (BibTeX style) files that define how references are formatted in the bibliography (e.g., author order, punctuation, etc.). Use these with `\bibliographystyle{}`. |
| `empty.eps` | File | Placeholder image file in EPS format. Can be replaced or deleted. |
| `fig.eps` | File | Sample figure in EPS format. Replace with your actual figure or delete if unused. |
| `sn-article.pdf` | File | A compiled example of the final manuscript using the template. Use it as a reference for formatting. |
| `sn-article.tex` | File | The main LaTeX manuscript file. Rename and adapt this file to write your article. |
| `sn-bibliography.bib` | File | A sample BibTeX bibliography file. Use this to store and manage your references. |
| `sn-jnl.cls` | File | The core LaTeX class file that defines the Springer Nature journal formatting. Required for compilation. Do not modify. |
| `user-manual.pdf` | File | Official documentation for using the Springer LaTeX template. Includes guidelines for formatting, commands, and best practices. |

> 💡 **Note:** You can delete any unused placeholder files (e.g., `fig.eps`, `empty.eps`, sample `.bib`) once your final manuscript is complete. Keep only what’s needed to compile your submission.
