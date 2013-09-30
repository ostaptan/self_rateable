module SelfRateable
  module Rateable
    def self_rateable(options = {})
      class_eval do
        has_many :ratings, :as => :rateable, :dependent => :destroy, :class_name => 'SelfRateable::Rating'
        include SelfRateable::Core::InstanceMethods
        extend SelfRateable::Core::ClassMethods
      end
    end
  end
end