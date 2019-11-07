
# Real Time Twitter Sentiment Analysis using Python and Oracle Autonomous Database Deployed using Docker

Last Updated:<br>February 01, 2019
</td>
<td class="td-banner">
# Twitter real time analysis - Docker + ATP
</td></tr><table>

Project to implement real time twitter data analysis using python on Oracle Autonomous Database deployed on Oracle Cloud Infrastructure (OCI) using Docker.


## Introduction

These instructions will get you a copy of the project up and running on your local or any machine/system for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Prerequisites

What things you need to install the software and how to install them


- OCI Autonomous Transaction Processing Database. 

  Learn more about provisioning and using Oracle ATP by visiting [ATP Documentation](https://docs.oracle.com/en/cloud/paas/atp-cloud/atpug/getting-started.html#GUID-F370F478-2B17-48EA-A7C0-BCE0C1E3C72F) website
- Docker. 

  Learn more about installing and using Docker by viewing this [website](https://docs.docker.com/install/)


## Package Contents

* import-export
  * Real_Time_Twitter_Sentiment_Analysis.py
    * Connect to Oracle Autonomous DB
    * Connect to Twitter Application
    * Collect Real Time Data from Twitter
    * Normalizing Sensitive Tweets (Mask Sensitive and Racial Slurs from Tweets)
    * Insert data in Real Time into Oracle Autonomous DB
* notebook
  * Indian Premier League.json - SQL notebook
    * Perform Data Analysis and Visualization
* reset
  * Real_Time_Twitter_Sentiment_Analysis_Reset.py - drop tables and remove data
* source
  * Real Time Twitter Data 

## Components
* ### Data Source&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Twitter
* ### Data Collection and Processing     &nbsp; &nbsp;: Python
* ### Data Storage                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Oracle Database(Autonomous Transaction Processing) on Oracle Cloud Infrastructure
* ### Data Visualization/Reporting       &nbsp; &nbsp; &nbsp; &nbsp;: Oracle SQL Notebook
* ### Application Deployment             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Docker 




## Steps to Deploy

- Open terminal
- Move to the folder where you want to download the application.
- Create a directory for the application

  ```
  mkdir /APPTwitter
  ```
- Move to that directory

  ```
  cd /APPTwitter
  ```
- Clone the Github Repository

  ```
  git clone https://github.com/Abdul-Rafae-Mohammed/Deploying-Python-App-as-a-Microservice.git
  ```
- Go inside the Deploying-Python-App-as-a-Microservice Directory

  ```
  cd Deploying-Python-App-as-a-Microservice
  ```
- Make Sure Docker Application on your machine is started.

- unzip your database wallet into the wallet_TWITTER folder present in the current directory.

- Download the Oracle Instant Client Basic and sqlplus package for your Operating System into the current folder.

- If you have any existing docker images you can remove it by running the following commands:  

  ```
  docker rm -f $(docker ps -a -q)

  docker rmi -f $(docker images -q)
  ```
- Build the docker image by run the following command 

  ```
  docker build -t twitter .
  ```

- Deploy and run the application by using the following command 

  ```
  docker run -i -p 3050:3050 -t twitter sh
  ```

- Go inside the docker image directory
  ```
  cd /opt/oracle/lib/Real-Time_Twitter-Data-Analysis/
  ```

- Run python app

  ```
  python Real_Time_Twitter_Sentiment_Analysis.py
  ```

- Verify data in your database by using logging in using SSH in the terminal or using SQL Developer.


## Authors

**Abdul Rafae Mohammed (abdul.rafae.mohammed@oracle.com)**

**Tejus Chandrashekhar Subrahmanya (tejus.subrahmanya@oracle.com)**

**Calvin Cortez (calvin.cortez@oracle.com)**


