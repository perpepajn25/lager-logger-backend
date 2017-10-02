class Beer < ApplicationRecord

  has_many :logs
  has_many :coolers, through: :logs

end
