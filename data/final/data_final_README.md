# CPG-APL `/data/final` README

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

- `/final/`: Contains the final version of datasets, typically ready for analysis or publication.

> ⚠️ **Note:** Only data files should go in this directory. Scripts should go in `/code/`.

> 🛑 **STOP:** **NEVER** commit sensitive data (e.g., personally identifiable information, confidential data) to this repository. 
> - If necessary, anonymize or obfuscate sensitive data before storing or sharing.
> - Use `.gitignore` to exclude large or sensitive files from version control.