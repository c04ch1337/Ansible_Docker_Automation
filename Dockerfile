FROM python:3.11-slim

# Metadata
LABEL maintainer="C04CH_1337 <c04ch@protonmail.com>"
LABEL version="1.0"
LABEL description="Ansible Docker container with volume mounts for local development."

# Environment
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TZ=America/Chicago

# Install system dependencies and Ansible
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        sshpass \
        git \
        openssh-client \
        vim \
        sudo \
        ansible \
        ansible-lint && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create ansible directory structure
RUN mkdir -p /ansible/{inventories,playbooks,roles,group_vars,host_vars,scripts} && \
    touch /ansible/ansible.cfg

# Copy lint script
COPY scripts/ansible_lint.sh /usr/local/bin/ansible_lint.sh
RUN chmod +x /usr/local/bin/ansible_lint.sh

# Set working directory
WORKDIR /ansible

# Set default command
CMD ["bash"]
