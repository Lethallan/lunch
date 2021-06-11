class OrderCollectionSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :user_id
end