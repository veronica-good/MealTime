class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :lactose_free, :kids_friendly, :vegeterian
  
  has_many :recipes
  class RecipeSerializer < ActiveModel::Serializer
    attributes :id, :ingredients, :two, :four, :measure
  end

  has_many :preparations
  class PreparationSerializer < ActiveModel::Serializer
    attributes :id, :step
  end

end
