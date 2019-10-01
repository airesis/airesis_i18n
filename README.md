# Airesis I18n

This project contains all the translatoins, in different languages, for Airesis.
The main project, located at https://github.com/airesis/airesis supports only English.

By adding this gem to the project, many more languages are supported.

To contribute to the project's translations,
you can open a Pull Request with your changes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'airesis_i18n'
```

And then execute:

    $ bundle

## Usage

The project adds automatically the translations for different languages.
No particular configuration is needed to enable and use it.

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

The translations are uploaded on Crowdin. You can request access to Crowdin to help translating.

You can fetch the latest airesis translations with `bin/rails airesis_i18n:update`.
This will download the latest english files from the main branch of airesis.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/airesis/airesis_i18n. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Airesis I18n project’s codebases,
issue trackers, chat rooms and mailing lists is expected to follow the
[code of conduct](https://github.com/airesis/airesis_i18n/blob/master/CODE_OF_CONDUCT.md).
