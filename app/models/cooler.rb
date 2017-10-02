class Cooler < ApplicationRecord

  belongs_to :user
  has_many :logs
  has_many :beers, through: :logs

end
