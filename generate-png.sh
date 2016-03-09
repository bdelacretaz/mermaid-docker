#!/bin/bash
# Generates a png from stdin using Mermaid running in Docker.
# Requires building the mermaid-pipline Docker image 
# first, like "docker build -t mermaid-pipline ."
ME=$(basename $0)
export OUT=/tmp/mermaid-output.png
docker run -i \
	-a stdin -a stdout -a stderr \
	mermaid-pipeline > $OUT \
	&& echo "Mermaid output file is $OUT" && file $OUT