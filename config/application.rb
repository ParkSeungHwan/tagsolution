require_relative 'boot'

require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tagsolution
  class Application < Rails::Application
    # Add the fonts path
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    #
    # # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf )
    #

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
