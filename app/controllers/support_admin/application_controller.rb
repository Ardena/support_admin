require 'casclient'
require 'casclient/frameworks/rails/filter'

module SupportAdmin
  class ApplicationController < ActionController::Base

    before_action :nav_settings
    before_filter CASClient::Frameworks::Rails::Filter

    def nav_settings
      @settings = SupportAdmin::Setting.order(:display_name)
    end

    def default_class
      render 'default'
    end

    def logout
      CASClient::Frameworks::Rails::Filter.logout(self)
    end
  end
end
