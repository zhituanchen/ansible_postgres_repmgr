node_id=2
node_name={{postgres_node_name}}02
conninfo='host={{postgres_node_name}}02 user=repmgr password={{repmgr_password}} dbname=repmgr connect_timeout=2'
data_directory='{{data_path}}/postgres/data/'
pg_bindir='/usr/pgsql-15/bin/'
log_level=INFO
log_file='/var/log/repmgr.log'
