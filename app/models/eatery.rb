class Eatery < ActiveRecord::Base
  validates :name, presence: true
  validates :yelp_url, presence: true
  validates :price_range, presence: true

  belongs_to :company
  belongs_to :price_range
  has_many :reviews
  has_many :eatery_cuisines
  has_many :cuisines, through: :eatery_cuisines
end
