# main.R 

# ====================================
# Instructions
# ====================================

# This script sequentially runs all scripts in the /code directory.
# It also logs the output to a timestamped log file.
# Place this file in: cpg-###/code/main.R

# ====================================
# Set Working Directory
# ====================================
# Set working directory to project root (assumes you're in /code/)
rootdir <- normalizePath(file.path(getwd(), ".."))
setwd(rootdir)

# ====================================
# Initialize Logging
# ====================================
timestamp <- format(Sys.time(), "%Y-%m-%d_%H-%M-%S")
log_file <- file.path("code", paste0("runlog_", timestamp, ".txt"))
log_con <- file(log_file, open = "wt")
sink(log_con, split = TRUE)  # Split = TRUE prints to console AND log file
cat("🔧 Log started at:", timestamp, "\n")
cat("Working directory:", getwd(), "\n\n")

# ====================================
# Define Scripts to Run
# ====================================
scripts <- c(
  "01_load.R",   
  "02_clean.R",  
  "03_merge.R",  
  "04_analysis.R",
  "05_tables.R", 
  "06_figures.R" 
)

# ====================================
# Execute Scripts
# ====================================
for (script in scripts) {
  script_path <- file.path("code", script)
  if (file.exists(script_path)) {
    cat(paste0("▶️ Running ", script, "...\n"))
    tryCatch({
      source(script_path)
      cat(paste0("✅ Finished ", script, "\n\n"))
    }, error = function(e) {
      cat(paste0("❌ Error in ", script, ": ", e$message, "\n\n"))
    })
  } else {
    cat(paste0("⚠️ Script ", script_path, " not found. Skipping.\n\n"))
  }
}

# ====================================
# Close Log
# ====================================
cat("🏁 All scripts processed. Log saved to:", log_file, "\n")
sink()
close(log_con)
