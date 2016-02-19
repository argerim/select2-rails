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
    remote = "https://github.com/select2/select2"
    get "#{remote}/raw/#{tag}/dist/css/select2.css", "stylesheets/select2.css"
    get "#{remote}/raw/#{tag}/dist/js/select2.full.js", "javascripts/select2.full.js"
    get "#{remote}/raw/#{tag}/dist/js/select2.js", "javascripts/select2.js"
    languages.each do |lang|
      get "#{remote}/raw/#{tag}/dist/js/i18n/#{lang}.js", "javascripts/select2_locale_#{lang}.js"
    end
  end

  private

  def fetch_tags
    http = HTTPClient.new
    response = JSON.parse(http.get("https://api.github.com/repos/select2/select2/tags").body)
    response.map{|tag| tag["name"]}.sort
  end

  def languages
    [ "ar", "az", "bg", "ca", "cs", "da", "de", "en", "es", "et", "eu", "fa", "fi", "fr", "gl", "he", "hi", "hr", "hu",
      "id", "is", "it", "ja", "ko", "lt", "lv", "mk", "ms", "nb", "nl", "pl", "pt", "pt-BR", "ro", "ru", "sk", "sr", "sr-Cyrl",
      "sv", "th", "tr", "uk", "vi", "zh-CN", "zh-TW"].sort
  end

  def select msg, elements
    elements.each_with_index do |element, index|
      say(block_given? ? yield(element, index + 1) : ("#{index + 1}. #{element.to_s}"))
    end
    result = ask(msg).to_i
    elements[result - 1]
  end

end
