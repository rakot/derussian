# Derussian

Replace russian date to english

## Installation

Add this line to your application's Gemfile:

    gem 'derussian'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install derussian

## Usage

    Derussian::delocalize '13 сентября 2013'
    Derussian::delocalize '2 часа назад'

It was created to use with Chronic gem, like that

    Chronic.parse(Derussian::delocalize('2 часа назад'))

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
