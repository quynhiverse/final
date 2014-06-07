class Review < ActiveRecord::Base
  validates_presence_of :dress_id
  validates_presence_of :review_rating
  validates_presence_of :review, presence: true
end
