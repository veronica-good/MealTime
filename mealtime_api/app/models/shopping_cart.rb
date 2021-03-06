class ShoppingCart < ApplicationRecord
  belongs_to :user
  belongs_to :food

  validates(
    :food_id,
    uniqueness:{
      scope: :user_id,
      message: "already added to the cart"
    }
  )
end
