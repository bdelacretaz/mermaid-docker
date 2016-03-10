# mermaid-docker
Dockerfile and scripts used to generate diagrams and flowcharts using Mermaid (https://github.com/knsv/mermaid).

Allows using Mermaid from the command line or scripts, requires just Docker to be installed.

## Usage
Install Docker

Build the Docker image, from this folder:

    docker build -t mermaid-pipeline .
	
Generate a minimal dynamic diagram in Mermaid's structured 
text format and use the Docker image to run mermaid to generate
a PNG image:

    ./dynamic-diagram.sh | ./generate-png.sh
	
The resulting image is found at `/tmp/mermaid-output.png`	

Have a look at those (very simple) scripts for more details.
