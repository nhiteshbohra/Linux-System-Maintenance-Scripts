# Kali System Maintenance Scripts

This repository contains a collection of Bash scripts designed to automate and simplify system maintenance tasks on Kali Linux. These scripts help keep your system up-to-date, secure, and running smoothly.

## Scripts Overview

### update_all_sys.sh

A comprehensive script to perform full system maintenance on Kali Linux. It automates the following steps:

1. **Update package list** (`sudo apt update -y`)
2. **Upgrade installed packages** (`sudo apt upgrade -y`)
3. **Dist-upgrade** for kernel and major changes (`sudo apt dist-upgrade -y`)
4. **Full-upgrade** for safer dependency handling (`sudo apt full-upgrade -y`)
5. **Fix broken dependencies** (`sudo apt --fix-broken install -y`)
6. **Ensure Kali default tools are installed** (`sudo apt install kali-linux-default -y`)
7. **Remove unused packages** (`sudo apt autoremove -y`)
8. **Clean package cache** (`sudo apt autoclean -y` and `sudo apt clean`)
9. **Reconfigure partially installed packages** (`sudo dpkg --configure -a`)

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/nhiteshbohra/Linux-System-Maintenance-Scripts.git
   cd Linux-System-Maintenance-Scripts
   ```

2. **Make the script executable:**

   ```bash
   chmod +x update_all_sys.sh
   ```

3. **Run the script:**

   ```bash
   ./update_all_sys.sh
   ```

   > **Note:** You may need to run as root or with `sudo` privileges.

## Disclaimer

- These scripts are intended for Kali Linux. Use on other distributions at your own risk.
- Review scripts before running, especially if you modify them.

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License.

