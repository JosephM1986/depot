class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  #using Array::sum method to sum the prices of each item in the collection


  def add_product(product)
current_item = line_items.find_by(product_id: product.id)
if current_item
    current_item.quantity += 1
else
current_item = line_items.build(product_id: product.id)
 end
  current_item
end

  def total_price
     line_items.to_a.sum { |item| item.total_price }
  end
end
