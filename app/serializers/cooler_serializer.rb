class CoolerSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  has_many :logs
end
