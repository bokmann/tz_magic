module TzMagic
  class TimeZonesController < ApplicationController

    skip_before_filter :ensure_timezone

    def create
      session[:timezone] = params[:timezone_name]
      forward_to = session[:timezone_return_to] || root_path
      render :json => {:forward_to => forward_to }
    end

  end
end