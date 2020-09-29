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

  'work*':
     - default
