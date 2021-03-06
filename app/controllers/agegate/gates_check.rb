module Agegate
  module GatesCheck

    def check_agegate
      return if Rails.application.config.agegate.skip || is_a_crawler?

      if cookies[:gate].blank?
        store_referrer
        redirect_to agegate_url
      else
        redirect_to denied_url if cookies[:gate] == "0"
      end
    end

    def store_referrer
      session[:return_to] = request.url
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end

    private

    def is_a_crawler?
      if request.env["HTTP_USER_AGENT"].nil?
        false
      else
        request.env["HTTP_USER_AGENT"].match(/\(.*https?:\/\/.*\)/)
      end
    end
  end
end