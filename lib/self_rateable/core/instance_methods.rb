module SelfRateable::Core
 	module InstanceMethods
 	  module Likes
	 	  def rating
	        ratings.sum(:rating).to_f
	      end

	      def rated_by_rater?(rater)
	        ratings.where(:rater_id => rater.id).count > 0
	      end

	      def rate(rater)
	      	rater.present? ? rate = ratings.where(rater_id: rater.id).first : raise('Rater object is incorrect.')
	      	if rate.present?
	      	# unlike if already rated 
	      	 	rated_by_rater?(rater) ? ratings.where(rater_id: rater.id).delete_all : rate.rating += 1
	      	 	rate.save!
	      	else
	      	#create new record if not yet rated	
	      		ratings << SelfRateable::Rating.new(rating: 1, rater_id: rater.try(:id))
	      	end
	      	self.save!
	      end

	  end

	  module Stars
	  end

	  module Points
	  end
 	end
end
