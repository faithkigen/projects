class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :category
end
