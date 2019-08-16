class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  # simple multiplication that will calculate the product price
  # by the quantity
  def total_price
    product.price * quantity
  end
end
