#Be sure to restart your server as action cable does not support auto reloading
class ProductsChannel < ApplicationCable::Channel
  def subscribed
     stream_from "products"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
