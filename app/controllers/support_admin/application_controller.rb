require 'casclient'
require 'casclient/frameworks/rails/filter'
require 'kaminari'
require 'github/markup'

module SupportAdmin
  class ApplicationController < ActionController::Base

    before_action :nav_settings
    before_filter CASClient::Frameworks::Rails::Filter

    def nav_settings
      @settings = SupportAdmin::Setting.order(:display_name)
    end

    def default
      @html = GitHub::Markup.render("README.rdoc", File.read("#{Rails.root}/README.rdoc")).html_safe
      render 'default'
    end

    def logout
      CASClient::Frameworks::Rails::Filter.logout(self)
    end
  end
end
