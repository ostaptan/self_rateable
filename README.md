# SelfRateable

Clean, powerful, customizable, simple, configurable, gem for displaying and handling ratings, likes, and feedbacks for ActiveRecord model.
People!!! Please provide your feedbacks what functionality to add on the issues page. I'm open to whatever questions for improving this gem. 

## Installation

Add this line to your application's Gemfile:

    gem 'self_rateable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install self_rateable

## Usage

Make you ActiveRecord model self rateable:

The default type is :likes

	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate
 	end

Rates philosophy as in facebook & vk (like/unlike)

	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate, type: :likes
 	end

 	Rate:

 	object.like object_of_AR_model_that_can_rate

Stars rates diapasone 1..5 (as on movies) 	

 	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate, type: :stars
 	end

 	Rate:

 	object.rate object_of_AR_model_that_can_rate, count_of_stars

 Rates philosophy as in stackoverflow (+1 vs -1)	

 	class Model < ActiveRecord::Base
    	self_rateable by: :class_name_of_AR_model_that_can_rate, type: :points
 	end

 	Rate:

 	object.vote object_of_AR_model_that_can_rate, bool

This vote method returns false if object_of_AR_model_that_can_rate has already voted once. You can capture that output to show some messages.	

 (If true it adds 1 point if false it decreases 1 point)	

 Run rake task to prepare and update your database:

 	rake self_rateable	


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request and send it to me.)

## What to do?

1. Create generators for templates to render on UI with images and stylings of different types of ratings.
2. Create complete test coverage
3. Add more flexibility by providing more class and instance methods. 
