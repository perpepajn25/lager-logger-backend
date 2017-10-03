class User < ApplicationRecord

  has_one :cooler
  has_many :logs, through: :cooler
  has_many :beers, through: :logs

end
