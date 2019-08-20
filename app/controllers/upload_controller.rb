# frozen_string_literal: true

class UploadController < ApplicationController
  def get
    @picture = Picture.new
end



def picture
  @picture = Picture.find(params[:id])
  send_data(@picture.data,
            filename: @picture.name,
            type: @picture.content_type,
            disposition: "inline")
end

def show
  @picture = Picture.find(params[:id])
end

def save
  @picture = Picture.new(picture_params)
  if @picture.save
    redirect_to (action: 'show', id: @picture.id)
  else
    render(action: :get)
  end
end
  private

  def picture_params
    params.require(:picture).permit(:comment, :upload_picture)
  end
end
