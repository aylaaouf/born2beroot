# **Born2beRoot**

## **Overview**
Born2beRoot is a system administration project designed to set up a secure virtual server using Debian or CentOS. It focuses on virtualization, system hardening, and user management.

---

## **Requirements**
- Virtualization tools: **VirtualBox** or **UTM**.
- OS: **Debian** or **CentOS Stream**.
- Secure and optimized server configuration.

---

## **Key Features**
1. **Partitioning**: Proper disk partitioning (e.g., `/boot`, `swap`, `/`).
2. **User Management**: Create users with strong passwords and restricted privileges.
3. **Security**:
   - Configure **SSH** (disable root login, change port).
   - Set up **UFW** or **firewalld**.
   - Install **Fail2Ban** for brute-force protection.
4. **Monitoring**: Configure tools like **cron** and basic Linux commands for system performance.

---

## **Setup Steps**
1. Install the virtual machine using Debian or CentOS.
2. Partition the disk as required.
3. Configure user and root access securely.
4. Harden the system with firewall and Fail2Ban.
5. Test SSH access and system monitoring tools.

---

## **Usage**
- Log in using the secure user account.
- Manage the server using terminal commands.
- Monitor system logs and performance.

---

## **Resources**
- [Debian Docs](https://www.debian.org/doc/)
- [CentOS Stream](https://centos.org/)
- [Linux Command Guide](https://www.linuxtrainingacademy.com/linux-commands-cheat-sheet/)
