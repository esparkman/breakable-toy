require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BreakableToy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Semantic Logger Configuration
    config.rails_semantic_logger.started    = true
    config.rails_semantic_logger.processing = true
    config.rails_semantic_logger.rendered   = true
    config.rails_semantic_logger.format     = :color # :json, :default, :one_line
    config.rails_semantic_logger.ap_options = {multiline: true}
    config.semantic_logger.backtrace_level  = :debug


  end
end
