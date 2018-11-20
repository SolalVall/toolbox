FROM alpine:3.8
MAINTAINER Solal Vallee <solal.vallee@gmail.com>

ARG ANSIBLE_VERSION=2.7

RUN	apk --update add python py-pip git gcc musl-dev && \
		apk --update add --virtual build-dependecies libffi-dev openssl-dev python-dev build-base && \
		pip install --upgrade pip cffi && \	
		# Install Ansible from git repo
		pip install git+https://github.com/ansible/ansible.git@stable-$ANSIBLE_VERSION && \
		# Add localhost to default ansible inventory
		mkdir -p /etc/ansible/ && \
		echo "127.0.0.1" > /etc/ansible/hosts
