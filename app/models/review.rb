class Review < ActiveRecord::Base
  validates :user, presence: true
  validates :eatery, presence: true
  validates :stars, presence: true
  validates :stars, :inclusion => { :in => 0..4 }

  belongs_to :user
  belongs_to :eatery
end
