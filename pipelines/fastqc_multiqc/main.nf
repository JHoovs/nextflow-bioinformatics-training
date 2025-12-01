nextflow.enable.dsl=2

params.reads = "data/*.fastq.gz"
params.outdir = "results"

process FASTQC {
    tag "$sample_id"
    conda "fastqc"
    input:
    tuple val(sample_id), path(reads)

    output:
    path("${sample_id}_fastqc.zip")
    path("${sample_id}_fastqc.html")

    script:
    """
    fastqc $reads
    """
}

process MULTIQC {
    conda "multiqc"
    input:
    path fastqc_reports

    output:
    path "multiqc_report.html"

    script:
    """
    multiqc .
    """
}

workflow {
    Channel
        .fromFilePairs(params.reads)
        .map { sample -> tuple(sample.key, sample.value) }
        .set { read_pairs }

    qc = FASTQC(read_pairs)
    MULTIQC(qc.collect())
}
