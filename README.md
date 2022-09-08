# Algerography

Algerography is a library that contains Algerian cities and districtes 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'algerography'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install algerography

## Usage
```ruby
 # prints all cities informations code, name, area, districtes
    puts Algerography::French.all_data_cities

    #prints all districtes names in Algeria
    puts Algerography::French.all_cities_districts

    #prints all cities names in Algeria
    puts Algerography::French.cities_names

    #prints a city by its id
    puts Algerography::French.city_by_id 6

    # the French version is the same as english version 
    # there is also a version in arabic 
    
    puts Algerography::Arabic.all_data_cities
    
    puts Algerography::Arabic.all_cities_districts
   
    puts Algerography::Arabic.cities_names
    
    puts Algerography::Arabic.city_by_id 6
  ```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/youba1993/algerography.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
