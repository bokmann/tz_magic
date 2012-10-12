module TzMagic
  module BeforeFilter

    def ensure_timezone
      if session[:timezone].nil?
        session[:timezone_return_to] = request.path
        redirect_to tz_magic.new_time_zone_path
      end
    end

    def self.included(base)
      base.instance_eval do
        before_filter :ensure_timezone
      end
    end
  end
end
