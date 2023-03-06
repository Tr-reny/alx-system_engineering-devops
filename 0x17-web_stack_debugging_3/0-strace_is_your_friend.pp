# Fix permission issues causing 500 error
file { '/var/www/html':
  ensure => directory,
  owner  => 'www-data',
  group  => 'www-data',
}
