# Step1 : base images
FROM ubuntu:latest


# Step2 : package install 
RUN apt -y update && apt -y upgrade && apt -y install git net-tools vim

# Step3 : config file copy
COPY ../.exrc ~
COPY ../.bashrc ~

