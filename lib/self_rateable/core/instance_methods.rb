module SelfRateable::Core
 	module InstanceMethods
 	  module Likes
	 	  def likes
	        ratings.sum(:rating).to_f
	      end

	      def liked_by_rater?(rater)
	        ratings.where(:rater_id => rater.id).count > 0
	      end

	      def like(rater)
	      	rater.present? ? rate = ratings.where(rater_id: rater.id).first : raise('Rater object is incorrect.')
	      	if rate.present?
	      	# unlike if already rated 
	      	 	liked_by_rater?(rater) ? ratings.where(rater_id: rater.id).delete_all : rate.rating += 1
	      	 	rate.save!
	      	else
	      	#create new record if not yet rated	
	      		ratings << SelfRateable::Rating.new(rating: 1, rater_id: rater.try(:id))
	      	end
	      	self.save!
	      end

	  end

	  module Stars
	  	  def stars
	        ratings.average(:rating).to_f
	      end

	      def rated_by_rater?(rater)
	        ratings.where(:rater_id => rater.id).count > 0
	      end

	      def rate(rater, stars)
	      	rater.present? ? rate = ratings.where(rater_id: rater.id).first : raise('Rater object is incorrect.')
	      	stars = 5 if stars > 5
	      	stars = 0 if stars < 1 
	      	if rated_by_rater?(rater)
	      	# set new star rating if already rated
	      	 	rate.rating = stars.to_i
	      	 	rate.save!
	      	else
	      	#create new record if not yet rated	
	      		ratings << SelfRateable::Rating.new(rating: stars.to_i, rater_id: rater.try(:id))
	      	end
	      	self.save!
	      end
	  end

	  module Points
	  	  def votes
	        ratings.sum(:rating).to_f
	      end

	      def voted_by_rater?(rater)
	        ratings.where(:rater_id => rater.id).count > 0
	      end

	      def vote(rater, val)
	      	value = parse_val(val)
	      	if voted_by_rater?(rater)
	      	# set new star rating if already rated
	      	 	return false
	      	else
	      	#create new record if not yet rated	
	      		ratings << SelfRateable::Rating.new(rating: value.to_i, rater_id: rater.try(:id))
	      	end
	      	self.save!
	      end

	      private

	      def parse_val(val)
	      	val ? 1 : -1
	      end
	  end
 	end
end
