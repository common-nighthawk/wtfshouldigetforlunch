class PriceRange < ActiveRecord::Base
  validates :dollar_signs, presence: true
  validates :dollar_signs, :inclusion => { :in => 1..4 }

  has_many :eatery
end
