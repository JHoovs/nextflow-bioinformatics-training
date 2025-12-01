# Nextflow Bioinformatics Training Environment  
A hands-on, reproducible bioinformatics workflow environment built using **Nextflow**, **Conda**, and **Docker**.  
This project includes:

- Automated install scripts  
- A reproducible Conda environment  
- A Docker container for pipeline execution  
- A slightly advanced example pipeline: **FASTQ → FastQC → MultiQC**  
- Documentation explaining workflow engines and environment management  

Perfect for learning Nextflow or demonstrating workflow engineering skills.

---

## 🚀 Features

### ✔ Nextflow Workflow Engine  
Reproducible, portable pipelines for bioinformatics.

### ✔ FASTQC → MULTIQC Example Pipeline  
A real-world pipeline analyzing FASTQ sequencing files.

### ✔ Conda or Docker Execution  
Run locally, in a container, or on a cluster.

### ✔ Fully Documented  
Comprehensive docs explaining pipelines, configs, environments, and troubleshooting.

---

## 🛠️ Installation

### **1. Clone the Repository**
```bash
git clone https://github.com/<your-username>/nextflow-bioinformatics-training.git
cd nextflow-bioinformatics-training
```
### 2. **Install Dependencies (Conda + Java + Nextflow)**
```bash
bash env/install_nextflow.sh
```
### 3. **Activate Conda Environment**
```bash
conda activate nextflow-training
```
### 4. **Run The Example Pipeline**
```bash
cd pipelines/fastqc_multiqc
nextflow run main.nf -profile conda
```
## 🐳 Run with Docker

### **1. Building the container:**
```bash
bash env/docker/build_and_run.sh
```
### **2. Run pipeline with Docker:**
```bash
nextflow run main.nf -profile docker
```
## 📄 Documentation

See the docs/ folder for:
- overview.md – Why workflow engines matter
- nextflow_basics.md – Channels, processes, workflows
- workflow_explanation.md – Full explanation of the included pipeline
- environment_management.md – Conda vs Docker vs Singularity
- troubleshooting.md – Common errors and fixes

## 🧬 Example Output

- Per-sample FastQC reports (fastqc/)
- Aggregated MultiQC report (multiqc_report.html)
