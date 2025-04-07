# utils.R

# ====================================
# Instructions
# ====================================

# Edit and expand this template with more functions based on your workflow.
# Rename as "utils.R".
# Include the line
#       source("utils.R")
# in your main scripts whenever you need to use any of these utilities.

# Example:
# In your main analysis script (e.g., "01_load.R"), add the following line:
#       source("code/utils.R")

# This will allow you to access all functions defined in "utils.R" throughout your script.
# Make sure to keep the utils.R file in the same directory or adjust the path accordingly.


# ====================================
# Package installation (if necessary)
# ====================================

# Function to check and install required packages
install_if_needed <- function(packages) {
  # Loop through each package in the list
  for (pkg in packages) {
    # If the package isn't installed, install it
    if (!requireNamespace(pkg, quietly = TRUE)) {
      message(paste("Installing package:", pkg))
      install.packages(pkg)
    } else {
      message(paste("Package", pkg, "is already installed"))
    }
  }
}

# List of packages used in project
required_packages <- c("tidyverse", "lubridate", "yardstick") # example
install_if_needed(required_packages)

# ====================================
# Custom Functions
# ====================================

# Example: Function to clean column names
clean_names <- function(df) {
  # Convert column names to lowercase and replace spaces with underscores
  names(df) <- tolower(gsub(" ", "_", names(df)))
  return(df)
}

# Example: Function to generate a common ggplot theme
theme_apl <- function() {
  ggplot2::theme_minimal(base_size = 12) +
    ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold"),
      legend.position = "bottom"
    )
}

# Example: Function to read in data and apply cleaning
load_and_clean_data <- function(file_path) {
  # Load data
  data <- read.csv(file_path)
  
  # Clean column names
  data <- clean_names(data)
  
  return(data)
}

# ====================================
# Global Settings / Options
# ====================================

# Set global options, for example, to prevent scientific notation
options(scipen = 999)

# ====================================
# Other Utilities (Optional)
# ====================================

# Function to print a progress bar
progress_bar <- function(iter, total) {
  percent <- round(100 * iter / total)
  cat(paste0("\r[", strrep("=", percent / 2), strrep(" ", 50 - percent / 2), "] ", percent, "%"))
}

