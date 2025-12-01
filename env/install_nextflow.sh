```bash
#!/usr/bin/env bash

set -e

echo "Updating system..."
sudo apt update && sudo apt install -y \
    wget curl git unzip default-jdk

echo "Creating Conda environment..."
conda env create -f env/conda-environment.yml || conda env update -f env/conda-environment.yml

echo "Installing Nextflow..."
curl -s https://get.nextflow.io | bash
sudo mv nextflow /usr/local/bin/

echo "Done! Activate using:"
echo "conda activate nextflow-training"
