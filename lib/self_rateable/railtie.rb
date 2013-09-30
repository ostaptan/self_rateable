require 'self_rateable'
require 'rails'

module SelfRateable
  class Railtie < Rails::Railtie
	railtie_name :self_rateable

    rake_tasks do
      load 'tasks/prepare.rake'
    end
  end
end