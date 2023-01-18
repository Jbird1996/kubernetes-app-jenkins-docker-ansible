# Containerized web app deployed on Kubernetes cluster CI/CD. Jenkins. Docker. Kubernetes. Ansible

## To improve this I would-
- Create all infrastructure using terraform and run bash scripts on the servers to configure the servers.

In this project I take a simple web app found on the internet and containerize it, then deploy it to a kubernetes cluster using Jenkins & Ansible. CI/CD.

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

## Why use Kubernetes to deploy containers? 

Self healing. It will automatically restart unhealthy pods.

You can scale containers quickly, scaling up/down depending on the workloads.

Resilience for container-based workloads. Kubernetes is good at doing what it is made for – keeping container workloads up-and-running.

Consistent deployment management. A Kubernetes deployment has one advantage – it is based on a declarative state of the environment delivered through APIs. It is how the entire cloud should be. But in this case, with proper DevOps practices and CI/CD pipelines, we can focus on the description of the desired state of the application and quick deployments or roll-backs if needed, based on the declarative state.

### Completing the project

Firstly I set up 3 servers on AWS. 2 t2.micro EC2 instances, 1 acting as the jenkins server and 1 as the Ansible and docker server. The last server was a t2.micro and i used this to setup Kops (s an open-source project which helps you create, destroy, upgrade, and maintain a highly available, production-grade Kubernetes cluster.) The kops cluster setup 2 nodes of t2.medium.

To setup the Jenkins server correctly I followed this guide https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-22-04
Also allowed access to port 8080 on the EC2 security group, so I can access jenkins from the web browser on port 8080. 

I also installed Git on this server.

The second server I installed ansible and docker. https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-22-04 

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04

The third server I had to install Kops & Kubectl. https://kops.sigs.k8s.io/getting_started/aws/ (Shows how to install kops and setup a cluster)

I followed this to install kubectl. https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/

#### To improve the project efficiency I would put all the installation instructions into a bash script. Only do something by hand twice if you need to do it a third time then automate it.



