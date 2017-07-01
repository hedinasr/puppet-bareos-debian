# puppet-bareos-debian

This repository is just a sandbox to training myself on Puppet module writing.
Other Puppet module for Bareos already exists and are much better. *Don't use
this module on production*.

## Testing

Make sure you have:
- `bundler`
- `vagrant`

Install the necessary `gems`:
```
bundle install --path vendor/bundle
```

Run the tests:
```
bundle exec rake validate
bundle exec rake lint
bundle exec rake spec
```

Accecptance tests!
```
PUPPET_INSTALL_TYPE=agent PUPPET_INSTALL_VERSION=1.4.2 bundle exec rake beaker
```
