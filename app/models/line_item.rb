class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  #simple multiplication that will calculate the product price
  #by the quantity
  def total_price
    product.price * quantity
  end
end
