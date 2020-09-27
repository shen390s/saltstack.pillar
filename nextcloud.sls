# Notes:
# - Changing data directory after installation is not officially supported.
#   (see https://github.com/nextcloud/documentation/pull/955/files)
# - Nextcloud forbid symlinks for the data directory

nextcloud:
  php_version: php74
  root: /usr/local/www/nextcloud/
  data: /mnt/data/nextcloud
  cron_type: cron
  url: https://nextcloud.shenrs.eu
  domain: nextcloud.shenrs.eu
  db_type: mysql
  db_name: nextcloud
  db_host: 10.192.0.11
  db_user: root
  db_pass: 'srss97zb8'
  admin_user: admin
  admin_password: admin
  mail_smtphost: smtp.shenrs.eu
  mail_domain: shenrs.eu
  config:
    system:
     - key: redis host
       value: localhost
     - key: redis port
       value: 6379
       type: integer
     - key: overwrite.cli.url
       value: https://nextcloud.shenrs.eu
     - key: trusted_domains 0
       value: nextcloud.shenrs.eu
     - key: mail_smtphost
       value: smtp.shenrs.eu
     - key: mail_domain
       value: shenrs.eu
     - key: mail_smtpmode
       value: smtp
     - key: datadirectory
       value: /mnt/data/nextcloud/data
     - key: apps_paths 0 path
       value: /mnt/data/nextcloud/apps
     - key: apps_paths 0 writable 
       value: true
       type: boolean
     - key: apps_paths 0 url
       value: /apps
     - key: apps_paths 1 path
       value: /usr/local/www/nextcloud/apps-pkg
     - key: apps_paths 1 writable
       value: false
       type: boolean
     - key: apps_paths 1 url
       value: /apps-pkg
     - key: memcache.distributed
       value: \OC\Memcache\Redis
     - key: memcache.locking
       value: \OC\Memcache\Redis
     - key: memcache.local
       value: \OC\Memcache\Redis
     - key: filelocking.enabled
       value: true
       type: boolean
