# ansible_postgres_repmgr
use ansible playbook scripts auto install PG(rpm) and repmgr

# Quick Start
## system and db info
```markdown
system: centos 7
db: postgresql-15
repmgr: repmgr_15-5.4.1
```

## ansible hosts
```markdown
[postgres_repmgr]
192.168.8.102 ansible_user=root ansible_ssh_pass=oracle cluster_role=primary
192.168.8.103 ansible_user=root ansible_ssh_pass=oracle cluster_role=standby
[postgres_repmgr:vars]
postgres_pass='tBuiAxxxx'
postgres_exporter_pass='Nfjd_xxxx'
repmgr_password='Nfjd_xxxx'
```

## ansible var
```markdown
cat main.yml
---

# data directory
data_path: /db
postgres_backup_username: backup_admin
postgres_readonly_username: user_readonly
# rpm : postgresql15-15.10-1PGDG.rhel7.x86_64.rpm  postgresql15-contrib-15.10-1PGDG.rhel7.x86_64.rpm  postgresql15-libs-15.10-1PGDG.rhel7.x86_64.rpm postgresql15-server-15.10-1PGDG.rhel7.x86_64.rpm
download_target: /tmp/wisetop_deployer
# postgres_exporter
exporter_binary: postgres_exporter
backup_dir: /backup/postgres
postgres_node_name: rac

```

# Notice
These scripts are optimized based on the installation processes shared by users online. If there is any infringement, please contact me in time to delete them.
Hope this can be of help to you
