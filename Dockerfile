FROM ubuntu:16.04 

LABEL matainer="Felipe Borges <felipe.borges.fga@gmail.com>"
LABEL version="1.0"
LABEL descripiton="Development dependencies for PickEat project."

# code and depencies directory
WORKDIR /home

# upgrade package and souce list 
RUN apt-get update && apt-get upgrade -y 

# softwares and lib dependencies
RUN apt-get install -y \
        python3 \
        python3-pip \
        vim  

# python requirements
ADD requirements.txt . 

RUN pip3 install -r requirements.txt 

EXPOSE 8000
