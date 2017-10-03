class LogsSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :location, :date
  belongs_to :beer
  belongs_to :cooler
end
