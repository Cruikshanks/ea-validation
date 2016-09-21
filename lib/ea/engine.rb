module Ea
  class Engine < ::Rails::Engine
    isolate_namespace Ea

    # Add a load path for this specific Engine
    config.autoload_paths += Dir[ File.join(config.root, "lib", "**") ]

    initializer :add_i18n_load_paths do |app|
      app.config.i18n.load_path += Dir[config.root.join("config", "locales", "**", "**", "*.{rb,yml}").to_s]
    end
  end
end
