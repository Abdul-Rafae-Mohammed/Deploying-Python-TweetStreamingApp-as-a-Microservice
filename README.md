
# Real Time Twitter Data Streaming using Python and Oracle Autonomous Database Deployed using Docker

Last Updated:<br>February 01, 2019
</td>
<td class="td-banner">
# Twitter Real Time Data Streaming - Docker + ATP
</td></tr><table>

Project to implement real time twitter data streaming using python on Oracle Autonomous Database deployed on Oracle Cloud Infrastructure (OCI) using Docker.


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
    * Insert data in Real Time into Oracle Autonomous DB
* source
  * Real Time Twitter Data 

## Components
* ### Data Source&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Twitter
* ### Data Collection and Processing     &nbsp; &nbsp;: Python
* ### Data Storage                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Oracle Database(Autonomous Transaction Processing) on Oracle Cloud Infrastructure
* ### Application Deployment             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Docker 




## Steps to Deploy

- Register for a Twitter dev account. You can refer to the following blog for detailed steps : <a href="https://docs.inboundnow.com/guide/create-twitter-application/" target="_blank">Create a Twitter Dev App</a> 
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
  git clone https://github.com/Abdul-Rafae-Mohammed/Deploying-Python-TweetStreamingApp-as-a-Microservice.git
  ```
  
- Go inside the Deploying-Python-TweetStreamingApp-as-a-Microservice Directory

  ```
  cd Deploying-Python-App-as-a-Microservice
  ```
  
- Make Sure Docker Application on your machine is started.

- Deploy a Rest Service on the ATP database using which you will persist the data into the ATP Database. For more information on how to do that please refer this <a href="https://abdul-rafae-mohammed.github.io/StepByStepGuideToSetupPythonAppWithOracleATP/?page=Guide100Create_a_RestService_on_ATP.md" target="_blank">step by step guide</a> 

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
  cd TweetStreamingusingPythonintoOracleDBusingORDS
  ```

- Add your twitter app credentials you created earlier, the Rest Service you created earlier and the keyword based on which you want to collect tweets on in the configuration file.

  ```
  vi config_rest.txt
  ```
  
  ```
  keyword=ipl
  consumer_key=P5SFPo.................NaRkB
  consumer_secret=k7G.................KIkXIcdwydOLM8M
  access_token=8342334757797.....................4M
  access_secret=QPfmfzWb.........................uj
  rest_endpoint=http://xxx.xxx.xxx.xxx:xxxx/ords/xxxx/twitter/demo
  ```
  
- Run python app

  ```
  python Real_Time_TweetStreaming_using_Rest_Service.py config_rest.txt
  ```

- Verify data in your database by using logging in using SSH in the terminal or using SQL Developer.


## Authors

**Abdul Rafae Mohammed (abdul.rafae.mohammed@oracle.com)**

**Tejus Chandrashekhar Subrahmanya (tejus.subrahmanya@oracle.com)**

**Calvin Cortez (calvin.cortez@oracle.com)**


