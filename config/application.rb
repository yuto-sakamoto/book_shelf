require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BookShelf
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
     I18n.enforce_available_locales = false
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ja   # the framework and any gems in your application.

    config.generators do |g|
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
      g.assets          false
      g.jbuilder        false
      g.scaffold_stylesheet false

      g.test_framework :rspec,
        fixtures: true,
        view_specs:       false,
        controller_specs: false,
        helper_specs: true,
        routing_specs: false,
        request_specs:    true
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
