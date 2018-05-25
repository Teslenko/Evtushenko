require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module TimeOfRecruiting
  class Application < Rails::Application
    config.app_generators.scaffold_controller :responders_controller
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.load_defaults 5.1
    config.time_zone = "Moscow"
    config.i18n.default_locale = :ru
    config.assets.initialize_on_precompile = false
  end
end
