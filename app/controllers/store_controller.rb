# frozen_string_literal: true

class StoreController < ApplicationController
  # layout "standard", except: [:rss, :atom ]
  # layout :determine_layout
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
  end
  # def rss
  #   render(layout: false)
  # end
  # def checkout
  #   render(layout: "layouts/simple")
  # end

  private

  def determine_layout
    if Store.is_closed?
      "store_down"
    else
      "standard"
    end
  end
end
