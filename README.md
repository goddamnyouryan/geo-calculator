# GeoCalculator

GeoCalculator is an extraction of the calculation methods from the [Ruby Geocoder](https://github.com/alexreisner/geocoder) gem. Its purpose is to allow the geocoding calculation methods for models that already have latitude and longitude (obtained from the browser or an iphone app) to use distance calculations to find nearby model instances. It was extracted for use in Heat.

## Installation

Add this line to your application's Gemfile:

    gem 'geo-calculator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geo-calculator

## Usage

Add the line `include Geocoder::Store::ActiveRecord` into your model like so:

	app/models/location.rb
	class Location < ActiveRecord::Base
	  include Geocoder::Store::ActiveRecord
	end

make sure that your model has a `latitude` and `longitude` column.

This will give your model a bunch of calculation methods, like `.near` and `.within_bounding_box`. See them all [here](https://github.com/alexreisner/geocoder/blob/master/lib/geocoder/stores/active_record.rb)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
