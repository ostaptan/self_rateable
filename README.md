# SelfRateable

Clean, powerful, customizable, simple, configurable, gem for displaying and handling ratings, likes, and feedbacks for ActiveRecord model.

## Installation

Add this line to your application's Gemfile:

    gem 'self_rateable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install self_rateable

## Usage

Make you ActiveRecord model self rateable:

	class Model < ActiveRecord::Base
    	self_rateable on: :column_name, by: :class_name_of_AR_model_that_can_rate
 	end

 Run generator to prepare your database: (still not developed)

 	rails g self_rateable:prepare

 Migrate your database: (still not developed)
 	
 	rake db:migrate	

 Use: (still not developed)

 	object.rate object_of_AR_model_that_can_rate, count_of_rates

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
