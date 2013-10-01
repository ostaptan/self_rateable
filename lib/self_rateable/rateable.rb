module SelfRateable
  module Rateable
    def self_rateable_likes(options = {by: :user})
      class_eval do
        add_associations(options[:by])
        include SelfRateable::Core::InstanceMethods::Likes
        include SelfRateable::Core::ClassMethods::Likes
      end      
    end

    def self_rateable_stars(options = {by: :user})
      class_eval do
        add_associations(options[:by])
        include SelfRateable::Core::InstanceMethods::Stars
        include SelfRateable::Core::ClassMethods::Stars
      end  
    end

    def self_rateable_points(options = {by: :user})
      class_eval do
        add_associations(options[:by])
        include SelfRateable::Core::InstanceMethods::Points
        include SelfRateable::Core::ClassMethods::Points
      end  
    end

    private

    def add_associations(rated_by)
      has_many :ratings, as: :rateable, dependent: :destroy, class_name: 'SelfRateable::Rating'
      has_one :rater, as: :rater, class_name: rated_by.to_s.camelize
    end
  end
end