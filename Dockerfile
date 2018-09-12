FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y rubygems \
					ruby-dev \
					make \
					build-essential \
					g++
RUN gem install fastlane -NV

USER jenkins

COPY ./jenkinsWorkSpace /var/jenkins_home
