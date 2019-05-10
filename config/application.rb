require_relative 'boot'

require 'rails/all'
<<<<<<< HEAD
=======
# require 'carrierwave'
# require 'carrierwave/orm/activerecord'
>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

<<<<<<< HEAD
module ProjectTask
=======
module Dataflow
>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
<<<<<<< HEAD
=======
 
>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
