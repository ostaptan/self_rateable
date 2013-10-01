# SelfRateable

Clean, powerful, customizable, simple, configurable, gem for displaying and handling ratings, likes, and feedbacks for ActiveRecord model.

## Installation

Add this line to your application's Gemfile:

    gem 'self_rateable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install self_rateable

## Usage(still developing)

Make you ActiveRecord model self rateable:

The default type is :likes

	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate
 	end

Rates philosophy as in facebook & vk (like/unlike)

	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate, type: :likes
 	end

Stars rates diapasone 1..5 (as on movies) 	

 	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate, type: :stars
 	end

 Rates philosophy as in stackoverflow (+1 vs -1)	

 	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate, type: :points
 	end

 Run rake task to prepare and update your database:

 	rake self_rateable	

 Use: (still not developed)

 	object.rate object_of_AR_model_that_can_rate, count_of_rates

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
