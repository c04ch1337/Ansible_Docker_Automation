#!/bin/bash

echo "🔍 Running ansible-lint against all playbooks and roles..."
ansible-lint playbooks/
ansible-lint roles/
