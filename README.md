# 🚀 Ansible + Docker Development Environment

📦 Easily run and test Ansible playbooks inside a Docker container, with local folder mounting for rapid development.

---

## 🛠️ Features

- 🐳 Docker-based for isolation
- 📁 Volumes mapped for live syncing
- 🧱 Best practice Ansible structure
- ✏️ Edit your playbooks, roles, configs locally

---

## 📂 Folder Layout

```bash
ansible-docker/
├── Dockerfile
├── docker-compose.yml
├── ansible.cfg
├── inventories/
├── playbooks/
├── roles/
├── group_vars/
└── host_vars/
