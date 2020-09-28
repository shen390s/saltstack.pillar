# ignore_missing: True
'base':
  '*':
     - default

  'nextcloud*':
     - mysql
     - nginx
     - nextcloud

  'phabricator*':
     - mysql
     - nginx

  'mysql*':
     - mysql
