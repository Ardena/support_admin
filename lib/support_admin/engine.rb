require 'casclient'
require 'casclient/frameworks/rails/filter'

module SupportAdmin
  class Engine < ::Rails::Engine
    isolate_namespace SupportAdmin

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

    CASClient::Frameworks::Rails::Filter.configure(
      :cas_base_url => "https://cas-sso.instructure.com"
    )

    require 'kaminari'
  end
end
