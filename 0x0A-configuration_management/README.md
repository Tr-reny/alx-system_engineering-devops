# 0x0A-configuration_management


# Install puppet-lint
```
apt-get install -y ruby
gem install puppet-lint -v 2.1.1
```

# Apply puppet configurations

```
puppet apply <filename.pp>
```

# Install puppet stdlib module
The stdlib module in some instances is not installed by default, leading to an erro when using file_line

```
sudo puppet module install puppetlabs-stdlib
```
