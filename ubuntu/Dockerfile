# Step1 : base images
FROM ubuntu:latest

# Step2 : package install 
RUN apt -y update && apt -y upgrade && apt -y install git net-tools vim

# Step3 : Specify a working directory 
WORKDIR '/root'

# Step4 : config file copy
RUN git clone http://github.com/impelfin/UNIX
RUN cp UNIX/ubuntu/.exrc .
RUN cp UNIX/ubuntu/.bashrc .
RUN rm -rf UNIX
