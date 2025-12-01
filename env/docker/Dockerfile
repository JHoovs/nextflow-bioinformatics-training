FROM continuumio/miniconda3

RUN conda install -y -c bioconda -c conda-forge \
    fastqc \
    multiqc \
    openjdk=17

RUN curl -s https://get.nextflow.io | bash && \
    mv nextflow /usr/local/bin/

WORKDIR /workspace
