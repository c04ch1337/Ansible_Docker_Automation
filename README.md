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
├── host_vars/
└── scripts/
```

---

## 🧪 Getting Started

### 🔧 1. Clone Repo & Build

```bash
git clone https://github.com/yourusername/ansible-docker.git
cd ansible-docker
docker-compose up -d --build
```

### 🖥️ 2. Run Ansible Commands

```bash
docker exec -it ansible_dev bash
ansible --version
ansible-playbook playbooks/site.yml
```

---

### ✅ Run Lint Checks

Run the included script:

```bash
docker exec -it ansible_dev /usr/local/bin/ansible_lint.sh
```

---

## 🧪 Dry Run Examples

Use `--check` and `--diff` flags to simulate changes:

```bash
ansible-playbook -i inventories/dev/hosts.yml playbooks/site.yml --check
ansible-playbook -i inventories/dev/hosts.yml playbooks/site.yml --diff
ansible-playbook -i inventories/dev/hosts.yml playbooks/site.yml --check --diff
```

These commands will:
- 🕵️ Show you what *would* change
- 🛡️ Avoid making actual changes (safe to test)

---

## 📥 Updating Ansible or Dependencies

Edit the `Dockerfile` and rebuild:

```bash
docker-compose build --no-cache
```

---

## 🤝 Contributions

Feel free to fork and improve. PRs welcome!

---

## 📜 License

MIT License © [Your Name]
