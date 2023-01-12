# 100-puppet_ssh_config.pp
file_line { 'Turn off passwd auth':
  path => '/home/vagrant/.ssh/config',
  line => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  path => '/home/vagrant/.ssh/config',
  line => 'IdentityFile ~/.ssh/school',
}
