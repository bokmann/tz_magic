module TzMagic
  module ApplicationHelper



    def time_zone
      name = session[:timezone] ? session[:timezone] : "UTC"
      ActiveSupport::TimeZone[name]
    end
  end
end
