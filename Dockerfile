FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y rubygems \
					ruby-dev \
					make \
					build-essential \
					g++
RUN gem install fastlane -NV
RUN gem install ambient-xcode

USER jenkins

COPY ./jenkinsWorkSpace /var/jenkins_home
