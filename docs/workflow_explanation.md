# FASTQC → MULTIQC Pipeline Explanation

1. Input FASTQ files are detected using:
- Channel.fromFilePairs("data/*.fastq.gz")

2. Each sample is passed into the `FASTQC` process.

3. All FASTQC outputs are collected into an array:
- qc.collect()

4. MultiQC aggregates reports into `multiqc_report.html`.

This mirrors real workflows used in preprocessing sequencing data.
