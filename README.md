# Containerized web app deployed on Kubernetes cluster CI/CD. Jenkins. Docker. Kubernetes. Ansible

In this project I take a simple web app found on the internet and containerize it, then deploy it to a kubernetes cluster using Jenkins. CI/CD.

3 Servers. 1 Jenkins server. 1 Ansible server and 1 Kubernetes server (running Kops). The project pulls source code from a github repository. The source code is sent to the ansible server and the docker image is built. The docker image is then tagged and pushed to my personal dockerhub repository. The files are then copied from the ansible server to the kubernetes server. The kubernetes server then deploys the web app on 2 worker nodes.

## Why containerize an application?

The purpose of containerization is to provide a secure, reliable, and lightweight runtime environment for applications that is consistent from host to host. 

Containers provide;

Portability

Efficiency

Agility

Faster delivery

Improved security

Faster app startup

Easier management

Flexibility
