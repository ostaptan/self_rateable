module SelfRateable::Core
	module ClassMethods
	  def self.included(base)
      	base.extend ActsAsRateable::Rateable::Core::ClassMethods
      end

	end
end
