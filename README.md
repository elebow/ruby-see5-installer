# See5::Installer

This gem installs the executables `c5.0` and `gritbot`, which can be used by other gems. It provides no other functionality. The executable files are left inside the gem directory, so they do not make any unnecessary assumptions about the directory structure of the system.

This repo contains snapshots of the source trees of C5.0 and GritBot, downloaded from <https://www.rulequest.com/download.html>. These packages are both licensed under GPL Version 3. The gem's code is licensed under the MIT License.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "see5-installer"
```

And then execute:

```
bundle install
```

Or install it yourself as:

```
gem install see5-installer
```

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/elebow/see5-installer>.
