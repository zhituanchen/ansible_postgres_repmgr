node_id=1
node_name={{postgres_node_name}}01
conninfo='host={{postgres_node_name}}01 user=repmgr password={{repmgr_password}} dbname=repmgr connect_timeout=2'
data_directory='{{data_path}}/postgres/data/'
pg_bindir='/usr/pgsql-15/bin/'
log_level=INFO
log_file='/var/log/repmgr.log'
