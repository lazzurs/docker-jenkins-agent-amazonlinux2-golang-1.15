FROM ghcr.io/lazzurs/jenkins-agent-amazonlinux2

ARG user=jenkins

USER root

RUN yum install -y golang-bin make
RUN yum clean all

USER ${user}

ENTRYPOINT ["jenkins-agent"]
