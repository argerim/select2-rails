module Select2
  module Rails
    class Engine < ::Rails::Engine
      # NOTE: this is necessary for rails 5
      initializer 'select2-rails.assets.precompile' do |app|
        %w(stylesheets javascripts).each do |sub|
          app.config.assets.paths << root.join('vendor', 'assets', sub).to_s
        end
      end
    end
  end
end
