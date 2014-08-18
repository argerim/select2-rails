module Select2
  module Rails
    class Engine < ::Rails::Engine
      Rails.application.config.assets.paths << root.join('vendor', 'assets', 'images')
      Rails.application.config.assets.paths << root.join('vendor', 'assets', 'stylesheets')
      Rails.application.config.assets.paths << root.join('vendor', 'assets', 'javascripts')
    end
  end
end
