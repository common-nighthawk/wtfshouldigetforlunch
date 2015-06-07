class Cuisine < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :eatery
end
