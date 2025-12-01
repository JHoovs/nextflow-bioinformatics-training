#!/usr/bin/env bash

# ---------------------------------------
# MultiQC Wrapper Script
# ---------------------------------------
# Usage: ./multiqc_wrapper.sh <input_dir>
# Output: multiqc_report.html in the input directory
# ---------------------------------------

set -e  # exit on error

# Check for input argument
if [ -z "$1" ]; then
    echo "ERROR: No input directory provided."
    echo "Usage: $0 <input_dir>"
    exit 1
fi

INPUT_DIR="$1"
OUTPUT_DIR="$INPUT_DIR/multiqc_report"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo "Running MultiQC on $INPUT_DIR..."
multiqc "$INPUT_DIR" -o "$OUTPUT_DIR"

echo "MultiQC completed. Report saved in $OUTPUT_DIR/multiqc_report.html"
