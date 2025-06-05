FROM python:3.11-slim

# Metadata
LABEL maintainer="C04CH1337 <c04ch@protonmail.com>"
LABEL version="1.0"
LABEL description="Ansible Docker container with volume mounts for local development."

# Environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Install system dependencies and Ansible
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        sshpass \
        git \
        openssh-client \
        vim \
        sudo \
        ansible && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create ansible directory structure
RUN mkdir -p /ansible/{inventories,playbooks,roles,group_vars,host_vars} && \
    touch /ansible/ansible.cfg

# Set working directory
WORKDIR /ansible

# Set default command
CMD ["bash"]
