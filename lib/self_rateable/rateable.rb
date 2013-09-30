module SelfRateable
  module Rateable
    def self_rateable(options = {on: :rating, by: :user})
      class_eval do
        has_many :ratings, :as => :rateable, :dependent => :destroy, :class_name => 'SelfRateable::Rating'
        has_many :raters, as: :rater, :class_name => options[:by].to_s.camelize
        include SelfRateable::Core::InstanceMethods
        extend SelfRateable::Core::ClassMethods
      end      
    end
  end
end