require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SemaphoreCiBuild
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.time_zone = 'Central Time (US & Canada)'
    config.filter_parameters += [:image, :signature, :token, :photo]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]
    config.i18n.enforce_available_locales = true
    config.autoload_paths += %W(
      #{config.root}/app/models
      #{config.root}/lib
      #{config.root}/lib/classes
      #{config.root}/app/interactors
    )

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
