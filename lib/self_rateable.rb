require "self_rateable/version"

require "active_record"
require "active_record/version"

$LOAD_PATH.unshift(File.dirname(__FILE__))

require "self_rateable/rateable.rb"
require "self_rateable/core/instance_methods.rb"
require "self_rateable/core/class_methods.rb"
require "self_rateable/rating.rb"

$LOAD_PATH.shift

ActiveRecord::Base.extend SelfRateable::Rateable if defined?(ActiveRecord::Base)