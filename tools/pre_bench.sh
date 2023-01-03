#!/usr/bin/env bash
set -euo pipefail

# nginx log rotate
nginx_log_file='/var/log/nginx/access.log'
mv ${nginx_log_file} "${nginx_log_file}.$(date '+%Y%m%d_%H%M%S')"
nginx -s reopen

# mysql log rotate
mysql_log_file='/var/log/mysql/mysql-slow.log'
mv ${mysql_log_file} "${mysql_log_file}.$(date '+%Y%m%d_%H%M%S')"
mysqladmin flush-logs -uroot

# restart services
systemctl restart isuconquest.ruby.service
systemctl restart mysql.service
systemctl reload nginx.service
