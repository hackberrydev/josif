# morf

An experiment in morphogenesis.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "morf"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install morf

## Usage

Require the library:

```ruby
require "morf"
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

To enable the repository’s bundled Git hooks (e.g. style checks):

```shell
git config core.hooksPath .githooks
```

You can check style guide compliance with StandardRB:

```shell
bundle exec standardrb
```

To automatically fix style issues:

```shell
bundle exec standardrb --fix
```

Standard is also integrated into the default Rake task.

Finally, run the test suite:

```shell
bundle exec rspec
```
