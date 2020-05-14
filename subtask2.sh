#!bin/bash

touch /root/Dockerfile

echo "FROM ubuntu

MAINTAINER Selva Karthik

COPY /root/task1.sh /root/task1.sh
COPY /root/task2.sh /root/task2.sh
COPY /root/task3.sh /root/task3.sh
COPY /root/task4.sh /root/task4.sh
COPY /root/task5.sh /root/task5.sh
COPY /root/H1.sh /root/H1.sh
COPY /root/H2.sh /root/H2.sh
COPY /root/FinalScript.bashrc /root/FinalScript.bashrc

#FinalScript.bashrc is equivalent to Alias.sh

RUN chmod +x ./root/FinalScript.bashrc

RUN ./root/FinalScript.bashrc">>/root/Dockerfile



docker build -t PanicAtCmdline:1.0 /root/Dockerfile

docker run --name MyContainer -it PanicAtCmdline bash

