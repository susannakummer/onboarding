# Overview

The computers available in the Zdouc Lab come with a pre-installed set of [programs](setup_script.sh).

These can be accessed by logging in with the `student` account


## For admins

*Nota bene: assumes a fresh Ubuntu install*

### First setup

- Login with admin account, create new user `student`, set password. Do not give sudo rights.

- Download and run the installer script
```commandline
wget https://raw.githubusercontent.com/zdouc-lab/onboarding/refs/heads/main/software_setup/setup_script.sh
chmod +x ./setup_script.sh
sudo ./setup_script.sh
```

- Add `student` to the `docker` group
```commandline
sudo usermod -aG docker student
```

- Verify that the `student` account is in the sudoers file and that it can run docker programs
```commandline
groups student
```

### Update procedure

- Login with admin account
- Download and run the update script

```commandline
wget https://raw.githubusercontent.com/zdouc-lab/onboarding/refs/heads/main/software_setup/update_script.sh
chmod +x ./update_script.sh
sudo ./update_script.sh
```