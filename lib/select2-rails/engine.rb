module Select2
  module Rails
    class Engine < ::Rails::Engine
      initializer :assets do |app|
        app.config.assets.paths << root.join('vendor', 'assets', 'images')
        app.config.assets.paths << root.join('vendor', 'assets', 'stylesheets')
        app.config.assets.paths << root.join('vendor', 'assets', 'javascripts')
      end
    end
  end
end
