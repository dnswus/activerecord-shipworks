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

ActiveRecord Shipworks uses the main database connection by default. However, in most of the cases, you want to connect to Shipworks as a second database connection. You could do that by setting `ENV['SHIPWORKS_DATABASE_URL]` by using a configuration file called `config/shipworks_database.yml`.

## Usage
You may query Shipworks data as any other ActiveRecord class:
```ruby
# Last 10 orders
Shipworks::Order.order(:OrderDate).last(10)
```

## Available Models
* Order
* OrderItem
* OrderItemAttribute
* OrderCharge
* Note
* Shipment
* Store
* UpsPackage
* User

### ER Diagram
```
                           +---------+
                           |         |
                           |  Store  |
                           |         |
                           +----+----+
                                |
                                |
                                |
                               /|\
+---------------+         +-----+-----+       +-------------+      +----------------------+
|               |\        |           |      /|             |     /|                      |
|  OrderCharge  +---------+   Order   +-------+  OrderItem  +------+  OrderItemAttribute  |
|               |/        |           |      \|             |     \|                      |
+---------------+         +-+-------+-+       +-------------+      +----------------------+
                            |       |
                            |       |
                            |       |
                           /|\     /|\
    +--------+       +------+-+   +-+----------+         +--------------+
    |        |      /|        |   |            |        /|              |
    |  User  +-------+  Note  |   |  Shipment  +---------+  UpsPackage  |
    |        |      \|        |   |            |        \|              |
    +--------+       +--------+   +------------+         +--------------+

```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/dnswus/activerecord-shipworks.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
