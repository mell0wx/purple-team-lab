# 🧪 Purple Team Lab: Threat Emulation & SIEM Integration

This project sets up a virtual lab environment to emulate real-world cyber threats and observe/log them in a SIEM like **Splunk** or **ELK**.

---

## 🧱 Architecture

- Virtualized Environment (VMs or Docker)
- SIEM (Splunk / ELK)
- Threat Emulation: Atomic Red Team, MITRE Caldera
- Optional: Sysmon, Elastic Agent, Winlogbeat, Zeek

---

## 🔧 Setup Options

- [ ] Local VMs with Vagrant
- [ ] Dockerized Lab
- [ ] Cloud-based (AWS with Terraform - optional)

---

## 🎯 Threat Simulation

- MITRE ATT&CK techniques
- Atomic Red Team YAML scripts
- Red vs Blue testing

---

## 📊 SIEM Logging & Detection

- Splunk queries and dashboards
- ELK ingestion pipelines and detection rules

---

## 📝 Roadmap

- [ ] Finish lab deployment scripts
- [ ] Integrate Atomic Red Team
- [ ] Build detection queries
- [ ] Publish walkthroughs

---
# Purple Team Lab (Local)

A local virtual lab to simulate cyber attacks and monitor them using a SIEM.

## 💻 Lab Components

| Role     | OS         | Tools                              |
|----------|------------|------------------------------------|
| Attacker | Kali Linux | Caldera, Atomic Red Team           |
| Defender | Ubuntu     | ELK Stack (Elasticsearch, Kibana)  |
| Victim   | Windows 10 | Sysmon                             |

## 🛠 Requirements

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/) or libvirt/KVM

## 🚀 Setup Instructions

1. Clone the repo:

   ```bash
   git clone https://github.com/mell0wx/purple-team-lab.git
   cd purple-team-lab

2. Start the lab

   ```bash
   vagrant up
  

3.Access Kibana at: http://192.168.56.11:5601

🧪 Simulating Attacks

Run MITRE Caldera or Atomic Red Team tests from the attacker VM to simulate behavior. Monitor events in ELK on the defender VM.

🔄 Resetting Lab
  ```bash
    vagrant destroy -f
    vagrant up
  ```

## 👨‍💻 Author

**EJ Alexander**  
🔗 [GitHub](https://github.com/mell0wx) | [LinkedIn](https://www.linkedin.com/in/earl-alexander-jr-482687150/)
