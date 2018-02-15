module SelfRateable::Core
	module ClassMethods
    module Likes
      def self.included(base)
        base.extend SelfRateable::Core::ClassMethods
      end
    end

    module Stars
    end

    module Points
    end
	end
end
