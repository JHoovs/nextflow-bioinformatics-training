#!/usr/bin/env bash

# ---------------------------------------
# FastQC Wrapper Script
# ---------------------------------------
# Usage: ./fastqc_wrapper.sh <input_fastq>
# Outputs: *_fastqc.html and *_fastqc.zip in ../fastqc_results/
# ---------------------------------------

set -e  # exit on error

# Check for input argument
if [ -z "$1" ]; then
    echo "ERROR: No input FASTQ file provided."
    echo "Usage: $0 <input_fastq>"
    exit 1
fi

INPUT_FASTQ="$1"
OUTPUT_DIR="../fastqc_results"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo "Running FastQC on $INPUT_FASTQ..."
fastqc "$INPUT_FASTQ" -o "$OUTPUT_DIR"

echo "FastQC completed for $INPUT_FASTQ. Results saved in $OUTPUT_DIR."
