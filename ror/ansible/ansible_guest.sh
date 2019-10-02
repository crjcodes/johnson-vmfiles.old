#!/usr/bin/env bash
# TODO: this installs vs 2.0; how about the latest?  At least 2.5?
#
echo "............Updating apt..."
sudo apt-get update
echo "............Installing ansible..."
sudo apt-get install -y ansible

cat >> /home/vagrant/ansible.cfg <<EOL
# config file for ansible -- https://ansible.com/
# ===============================================

# nearly all parameters can be overridden in ansible-playbook
# or with command line flags. ansible will read ANSIBLE_CONFIG,
# ansible.cfg in the current working directory, .ansible.cfg in
# the home directory or /etc/ansible/ansible.cfg, whichever it
# finds first

[defaults]
nocolor = 0

[colors]
highlight = white
verbose = blue
warn = bright purple
error = red
debug = dark gray
deprecate = purple
skip = cyan
unreachable = red
ok = green
changed = yellow
diff_add = green
diff_remove = red
diff_lines = cyan
EOL


