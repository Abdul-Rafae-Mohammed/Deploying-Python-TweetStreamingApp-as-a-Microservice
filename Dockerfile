FROM oraclelinux:7-slim

MAINTAINER oracle

# Install from yum
RUN echo "Installing EPEL, python-pip, unzip, libaio, oci_cli, requests, cx_Oracle"  && \
    yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y install python && \
    yum -y install python-pip &&\
    yum -y install unzip && \
    yum -y install libaio && \ 
    yum -y install nodejs npm --enablerepo=epel && \
    yum -y install git && \
    yum -y install nano && \
    yum clean all && \
    echo 'installing oci_cli' && \
    pip install oci_cli

# install from pip
RUN echo 'installing requests, cx_Oracle, argparse, simplejson, json' && \
    pip install requests tweepy simplejson argparse json

# get python application from git repo
RUN git clone https://github.com/Abdul-Rafae-Mohammed/TweetStreamingusingPythonintoOracleDBusingORDS.git
