class StaticPagesController < ApplicationController
  def home
    if !admin_signed_in?
      flash.now[:alert] = "No bro, just connect now!"
    end
  end
end
