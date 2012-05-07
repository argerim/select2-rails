require "thor"

class SourceFile < Thor
  include Thor::Actions

  desc "fetch source files", "fetch source files from GitHub"
  def fetch
    self.destination_root = "vendor/assets"
    remote = "https://github.com/ivaynberg/select2"
    get "#{remote}/raw/master/select2.png", "images/select2.png"
    get "#{remote}/raw/master/spinner.gif", "images/spinner.gif"
    get "#{remote}/raw/master/select2.css", "stylesheets/select2.css"    
    get "#{remote}/raw/master/select2.js", "javascripts/select2.js"
  end

  desc "convert css to sass file", "convert css to sass file by sass-convert"
  def convert
    self.destination_root = "vendor/assets"
    inside destination_root do
      run("sass-convert -F css -T sass stylesheets/select2.css stylesheets/select2.css.sass")
      gsub_file 'stylesheets/select2.css.sass', '(spinner.gif)', "('spinner.gif')"      
      gsub_file 'stylesheets/select2.css.sass', '(select2.png)', "('select2.png')"
      gsub_file 'stylesheets/select2.css.sass', ' url', ' image-url'
    end
  end

  desc "clean up useless files", "clean up useless files"
  def cleanup
    self.destination_root = "vendor/assets"
    remove_file "stylesheets/select2.css"
  end

end