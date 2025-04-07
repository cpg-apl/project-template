# main.R

# ====================================
# Instructions
# ====================================

# This script runs all the other scripts in the /code/ directory.
# There should be ONE main.R file, and it should be in cpg-###/code/.

# First, set working directory.
# Then, adjust the calls below to your program list.

# ====================================
# Set Working Directory
# ====================================
# This should be of the form:
# rootdir <- "cpg-###"
rootdir <- ""

# ====================================
# Script 1: (e.g., Load Data)
# ====================================
# 01_load.R - Load raw data and initial setup
cat("Running 01_load.R: Loading data...\n") # Optional message for tracking
source("code/01_load.R")

# ====================================
# Script 2: (e.g., Clean Data)
# ====================================
# 02_clean.R - Clean and preprocess data
cat("Running 02_clean.R: Cleaning data...\n") # Optional message for tracking
source("code/02_clean.R")

# ... Repeat for all scripts

# ====================================
# Final Output and Summary
# ====================================
cat("All scripts executed successfully.\n")
