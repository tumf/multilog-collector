# multilog-collector

[![Build Status](https://travis-ci.org/tumf/multilog-collector.svg?branch=master)](https://travis-ci.org/tumf/multilog-collector)
[![Coverage Status](https://coveralls.io/repos/tumf/multilog-collector/badge.png)](https://coveralls.io/r/tumf/multilog-collector)

A log collector for multilog of daemontools services.

See also > [About multilog-collector on Qiita in Japanese](http://qiita.com/tumf/items/81d8d490e8c04651186d)

## Install

    gem install multilog-collector

## Usage

```
 Usage: multilog-collector [options]
        --help                       show this message
    -d, --directory=DIR              service directory default: /service
    -l, --lines=N                    lines to collect default: 100
```

## Contributing to multilog-collector
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Yoshihiro TAKAHARA. See LICENSE.txt for further details.

