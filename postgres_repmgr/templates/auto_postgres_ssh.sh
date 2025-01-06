#!/usr/bin/expect -f


set timeout 30
spawn  /bin/sh /tmp/sshUserSetup.sh -user postgres -hosts "{{ postgres_repmgr_servers_group[0] }} {{ postgres_repmgr_servers_group[1] }}" -advanced –noPromptPassphrase
expect "Enter passphrase (empty for no passphrase):"
send \r
expect "Enter same passphrase again:"
send \r
expect "*password:*"
send postgres\n
expect "*password:*"
send postgres\n
expect "*password:*"
send postgres\n
expect "*password:*"
send postgres\n
expect off


set timeout 20
spawn ssh postgres@{{postgres_node_name}}02 date
expect "Are you sure you want to continue connecting (yes/no)?*"
send yes\r
expect off
