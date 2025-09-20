# 🛠️ Ansible Package Checker (Practice Project)

This is a **practice project** created to learn and experiment with **Ansible automation**.
It checks if specific packages (like `tree`, `curl`, `git`) are installed on remote hosts using Ansible and a simple Bash script.

---

## 📖 How It Works

1. **Bash Script (`pkg_check.sh`)**

   * Runs on each remote host.
   * Checks if the listed packages are installed.
   * Prints results in a simple, readable format:

   ```ini
   TASK [Show script results] *******************************************************
   ok: [localhost] => {
       "msg": [
           "[pkg_check]",
           "ip_address=192.168.121.135",
           "tree_installed=false",
           "curl_installed=true",
           "git_installed=true"
       ]
   }
   ```

2. **Ansible Playbook (`pkg_checker.yml`)**

   * Copies the script to remote hosts.
   * Executes it on each machine.
   * Displays the results in Ansible output.

---

## 📂 Project Structure

```
-Ansible-Package-Checker-Practice-Project-/
├── inventory.ini      # Inventory file with remote hosts
├── pkg_check.sh       # Bash script for checking packages
├── pkg_checker.yml    # Ansible playbook
└── README.md          # Project documentation
```

---

## 🚀 Usage

### 1. Clone the repo

```bash
git clone https://github.com/muzi5622/-Ansible-Package-Checker-Practice-Project-/
cd -Ansible-Package-Checker-Practice-Project-
```

### 2. Update your inventory

Edit `inventory.ini` and add your target hosts:

```ini
[web]
192.168.121.134
192.168.121.137
```

### 3. Run the playbook

```bash
ansible-playbook pkg_checker.yml -i inventory.ini -K
```

---

## 📝 Example Output

```ini
TASK [Show script results] *******************************************************
ok: [192.168.121.134] => {
    "msg": [
        "[pkg_check]",
        "ip_address=192.168.121.134",
        "tree_installed=true",
        "curl_installed=true",
        "git_installed=false"
    ]
}
```

---

## ⚡ Notes

* This project is **for practice purposes only**.
* In real-world scenarios, you can achieve similar results using Ansible modules like `package_facts`.
* The Bash script approach is meant to practice **Ansible + Bash integration**.

---

