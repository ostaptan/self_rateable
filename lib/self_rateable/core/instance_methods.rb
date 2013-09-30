module SelfRateable::Core
 	module InstanceMethods
 	  def rating
        ratings.average(:rating).to_f
      end

      def rated_by_rater?(rater)
        ratings.where(:rater_id => rater.id).count > 0
      end

      def rate

      end
 	end
end
