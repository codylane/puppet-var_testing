# puppet-var_testing
This has no use unless you want to test what undef, empty look like between different versions of puppet.

This is mainly here for my own sanity because I've found problems with
how variables result to truth expressions and continue to boggle me and
the puppet community.

See this page for more info of why this still might be an issue.
https://tickets.puppetlabs.com/browse/PUP-1467



# usage

## Testing puppet 3.8.7

```
export PUPPET_GEM_VERSION='3.8.7'
bundle update

./test.sh
```

## Testing puppet 4
```
export PUPPET_GEM_VERSION='4.2.1'
bundle update

./test.sh
```
