class User < ActiveRecord::Base
  validates :company, presence: true

  belongs_to :company
  has_many :reviews
end
