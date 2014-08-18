require "thor"
require "json"
require "httpclient"

class SourceFile < Thor
  include Thor::Actions

  desc "fetch source files", "fetch source files from GitHub"
  def fetch
    filtered_tags = fetch_tags
    tag = select("Which tag do you want to fetch?", filtered_tags)
    self.destination_root = "vendor/assets"
    remote = "https://github.com/ivaynberg/select2"
    get "#{remote}/raw/#{tag}/select2.png", "images/select2.png"
    get "#{remote}/raw/#{tag}/select2x2.png", "images/select2x2.png"
    get "#{remote}/raw/#{tag}/select2-spinner.gif", "images/select2-spinner.gif"
    get "#{remote}/raw/#{tag}/select2.css", "stylesheets/select2.scss"
    get "#{remote}/raw/#{tag}/select2-bootstrap.css", "stylesheets/select2-bootstrap.css"
    get "#{remote}/raw/#{tag}/select2.js", "javascripts/select2.js"
    languages.each do |lang|
      get "#{remote}/raw/#{tag}/select2_locale_#{lang}.js", "javascripts/select2_locale_#{lang}.js"
    end
  end

  desc "convert css to use rails paths", "make css use rails paths"
  def convert
    self.destination_root = "vendor/assets"
    inside destination_root do
      gsub_file 'stylesheets/select2.scss', %r/url\(([^\)]*)\)/, 'image-url(\1)'
    end
  end

  private

  def fetch_tags
    http = HTTPClient.new
    response = JSON.parse(http.get("https://api.github.com/repos/ivaynberg/select2/tags").body)
    response.map{|tag| tag["name"]}.sort
  end

  def languages
    [ "ar", "bg", "ca", "cs", "da", "de", "el", "es", "et", "eu", "fa", "fi", "fr", "gl", "he", "hr",
      "hu", "id", "is", "it", "ja", "ka", "ko", "lt", "lv", "mk", "ms", "nl", "no", "pl", "pt-BR",
      "pt-PT", "ro", "rs", "ru", "sk", "sv", "th", "tr", "uk", "vi", "zh-CN", "zh-TW"
    ].sort
  end

  def select msg, elements
    elements.each_with_index do |element, index|
      say(block_given? ? yield(element, index + 1) : ("#{index + 1}. #{element.to_s}"))
    end
    result = ask(msg).to_i
    elements[result - 1]
  end

end
