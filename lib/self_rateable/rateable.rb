module SelfRateable
  module Rateable
    def self_rateable(options)
      ops = validate_opts(options)
      class_eval do
        add_associations(ops[:by])
        include "SelfRateable::Core::InstanceMethods::#{ops[:type].to_s.camelize}".constantize
        include "SelfRateable::Core::ClassMethods::#{ops[:type].to_s.camelize}".constantize
      end      
    end

    private

    def add_associations(rated_by)
      has_many :ratings, as: :rateable, dependent: :destroy, class_name: 'SelfRateable::Rating'
      has_one :rater, as: :rater, class_name: rated_by.to_s.camelize
    end

    def validate_opts(options)
      raise 'Incorect specification of self_rateable in your model please check documentation' if options[:type].blank? && options[:by].blank?
      raise 'Incorect specification of self_rateable in your model please check documentation' if options[:by].blank?
      options[:type].blank? ? {by: options[:by], type: 'likes'} : options 
    end 
  end
end
