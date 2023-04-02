class DishSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :image_url, :description
end
