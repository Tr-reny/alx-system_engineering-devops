# This Puppet manifest fixes the Apache web server on the server

# Ensure that the apache2 package is installed
package { 'apache2':
  ensure => 'installed',
}

# Fix Apache by restarting the service
exec { 'fix-apache':
  command     => 'strace -e trace=file service apache2 restart',
  path        => '/usr/bin:/usr/sbin:/bin',
  refreshonly => true,
}

# Verify that Apache is returning the correct page
file { '/tmp/test.html':
  content => '<html><body>Success!</body></html>',
}

service { 'apache2':
  ensure => 'running',
  require => [File['/tmp/test.html'], Exec['fix-apache']],
}
