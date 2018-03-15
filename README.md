# ActiveRecord Shipworks
This gem allows you to read Shipworks data via ActiveRecord in a isolated namespace `Shipworks`.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'activerecord-shipworks'
```

And then execute:
```bash
$ bundle
```

If you are connecting Shipworks as a second database, add Shipworks database configuration to a separate file, e.g. `config/shipworks_database.yml`, and add initializer `config/initializers/shipworks_db.rb` to set the `SHIPWORKS_DB` constant:

```ruby
# config/initializers/shipworks_db.rb
SHIPWORKS_DB = YAML.load(ERB.new(IO.read(File.join(Rails.root, "config", "shipworks_database.yml"))).result)[Rails.env.to_s]
Shipworks::ApplicationRecord # NOTE: Keep it here to force it load models in Shipworks.
```

## Usage
You may query Shipworks data as any other ActiveRecord class:
```ruby
# Last 10 orders
Shipworks::Order.order(:OrderDate).last(10)
```


## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/dnswus/activerecord-shipworks.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
