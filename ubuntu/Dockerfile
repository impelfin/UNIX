# Step1 : base images
FROM ubuntu:latest

# Step2 : package install 
RUN apt -y update && apt -y upgrade && apt -y install git net-tools vim

# Step3 : Specify a working directory 
WORKDIR '/root'

# Step4 : config file copy
RUN mkdir temp
RUN git clone http://github.com/impelfin/UNIX temp
RUN cp temp/ubuntu/.exrc .
RUN cp temp/ubuntu/.bashrc .
RUN rm -rf temp
