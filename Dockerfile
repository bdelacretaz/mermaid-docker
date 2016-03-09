# Dockerfile used to run mermaid as a pipeline 
# from the command line.
FROM node:5

RUN apt-get update -qyy \
  && apt-get install -qyy bzip2 \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g mermaid
RUN npm install -g phantomjs@1.9.0-1

COPY fsroot /
WORKDIR /data
CMD ["/bin/bash", "./mermaid-pipeline.sh"]