module Select2
  module Rails
    class Engine < ::Rails::Engine
      initializer :assets do |config|
        config.assets.paths << root.join('vendor', 'assets', 'images')
        config.assets.paths << root.join('vendor', 'assets', 'stylesheets')
        config.assets.paths << root.join('vendor', 'assets', 'javascripts')
      end
    end
  end
end
