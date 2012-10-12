module TzMagic
  class TimeZonesController < ApplicationController

    def create
      session[:timezone] = params[:timezone_name]
      forward_to = session[:timezone_return_to] || root_path
      render :json => {:forward_to => forward_to }
    end

  end
end