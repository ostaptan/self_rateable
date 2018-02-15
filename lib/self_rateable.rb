require "self_rateable/version"
require "rails"
require "active_record"
require "active_record/version"

$LOAD_PATH.unshift(File.dirname(__FILE__))

require "self_rateable/rateable.rb"
require "self_rateable/core/instance_methods.rb"
require "self_rateable/core/class_methods.rb"
require "self_rateable/rating.rb"

module SelfRateable
  require "self_rateable/railtie" if defined?(Rails)
end

$LOAD_PATH.shift

ActiveRecord::Base.extend SelfRateable::Rateable if defined?(ActiveRecord::Base)
