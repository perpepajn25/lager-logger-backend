class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_one :cooler
  has_many :logs, through: :cooler
end
