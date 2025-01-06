#!/usr/bin/expect -f

set timeout 20
spawn ssh postgres@{{postgres_node_name}}01 date
expect "Are you sure you want to continue connecting (yes/no)?*"
send yes\r
expect off
