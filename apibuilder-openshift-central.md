# API Builder on OpenShift & API Central

In this exercise you're going to build an API with API Builder, push it on OpenShift and manage it with API Central.

![](./resources/osc5.png)

## Basics

### What is API Builder?

With [API Builder](https://www.axway.com/en/products/api-management/build-apis/builder-tool) you can easily create data models & API endpoints, using a GUI that runs on your laptop. Connectors allow you to access data from e.g. MySQL, Oracle or MongoDB, and you can build advanced logic & composite APIs with the graphical flow editor – without coding!

### What is OpenShift?

[OpenShift](https://www.openshift.com/) is a Platform-as-a-Service (PaaS) offering from Red Hat and a container orchestration platform using Docker + Kubernetes. Available online or on premise.

### What is API Central?

[API Central (BETA)](https://docs.axway.com/bundle/APICentralService_UserGuide_allOS_en_HTML5/page/Content/index.htm) is Axway's new cloud-based API Management solution.

## Setup

To do this exercise, you will need the following:

* [Docker](https://docs.docker.com/install/) and [NodeJS](https://nodejs.org/en/download/) installed on your laptop
* Access to [Docker Hub](http://hub.docker.com) 
* Web Browser
* Terminal / Command Prompt
* Text Editor (e.g. Atom)
* Free account for [OpenShift Online](https://manage.openshift.com)
* Access to [API Central](https://apicentral.axway.com)

![](./resources/osc-s2.png)

## 1 - Install API Builder and Create a Project

Open your Terminal (or Command Prompt) and go to your working directory (e.g. $HOME/projects), then install API Builder like this:

`npm install -g @axway/api-builder`  
`api-builder init myproject`

Issue the commands that API Builder recommends:

`cd myproject`   
`npm install --no-optional`   
`npm start`

