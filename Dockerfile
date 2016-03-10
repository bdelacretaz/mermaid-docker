# Dockerfile used to run mermaid as a pipeline 
# from the command line.
FROM node:5

# Some mermaid images apt-get bzip2 but
# my basic tests work without it.

RUN npm install -g mermaid@0.5.8
RUN npm install -g phantomjs@1.9.0-1

COPY fsroot /
WORKDIR /data
CMD ["/bin/bash", "./mermaid-pipeline.sh"]
