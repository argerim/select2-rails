module Select2
  module Rails
    class Engine < ::Rails::Engine
      initializer :images do |app|
        app.config.assets.precompile +=
          %w(select2.png select2-spinner.gif select2x2.png)
      end
    end
  end
end
