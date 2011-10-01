class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new

    end

  end

end
