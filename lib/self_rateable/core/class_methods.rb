module SelfRateable::Core
	module ClassMethods
	  def self.included(base)
      	base.extend SelfRateable::Core::ClassMethods
      end

	end
end
