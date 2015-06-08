class Company < ActiveRecord::Base
  validates :name, presence: true

  has_many :users
  has_many :eateries
  has_many :cuisines, through: :eateries
end
