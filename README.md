# Pastebin

Interface for scraping Pastebin plus command line tools.

## Requirements

* Pastebin LIFETIME PRO account.  [https://pastebin.com/api_scraping_faq](https://pastebin.com/api_scraping_faq).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pastebin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pastebin

## Building

    $ gem build pastebin.gemspec

    $ gem install pastebin-0.1.0.gem

## Usage

```
export PASTEBIN_API_KEY=abc123
```

```ruby
pastebin = Pastebin::API.new
recents = pastebin.recent
paste = pastebin.get_paste('paste_id')
```

Command Line:

```
pastebin recent
pastebin get <paste_id>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gregpalmier/pastebin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pastebin project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/gregpalmier/pastebin/blob/master/CODE_OF_CONDUCT.md).
