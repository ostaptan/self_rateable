module SelfRateable
  class Rating < ActiveRecord::Base
    belongs_to :rateable, :polymorphic => true
    belongs_to :rater
  end
end