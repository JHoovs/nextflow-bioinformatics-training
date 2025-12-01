#!/usr/bin/env bash

docker build -t nextflow-training .
docker run -it --rm -v $(pwd):/workspace nextflow-training bash
