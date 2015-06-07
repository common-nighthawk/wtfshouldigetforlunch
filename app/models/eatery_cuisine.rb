class EateryCuisine < ActiveRecord::Base
  validates :eatery, presence: true
  validates :cuisine, presence: true

  belongs_to :eatery
  belongs_to :cuisine
end
