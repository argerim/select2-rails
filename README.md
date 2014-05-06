#Select2 for rails asset pipeline

[Select2](https://github.com/ivaynberg/select2) is a jQuery based replacement for select boxes. It supports searching, remote data sets, and infinite scrolling of results.

The `select2-rails` gem integrates the `Select2` jQuery plugin with the Rails asset pipeline.

[![Gem Version](https://badge.fury.io/rb/select2-rails.png)](http://badge.fury.io/rb/select2-rails)

## Usage

### Install select2-rails gem

Add `select2-rails` to your Gemfile and run `bundle install`:

	gem "select2-rails"

### Include select2-rails javascript assets

Add the following to your `app/assets/javascripts/application.js`:

	//= require select2

### Include select2-rails stylesheet assets

Add to your `app/assets/stylesheets/application.css`:

	*= require select2

If you are using Twitter Boostrap you need to also require the bootstrap theme CSS in addition to the above require.

	*= require select2-bootstrap

## Internationalization (i18n)

The `select2-rails` now supports multiple languages.

Add the following to your `app/assets/javascripts/application.js`:

	//= require select2_locale_"any possible language"

Possible languages:

	ar, ca, cs, da, de, el, es, et, eu, fi, fr, gl, he, hr, hu, id, is, it, ja, ka, ko, lt, lv, mk, ms, nl, no, pl, pt-BR, pt-PT, ro, rs, ru, sk, sv, tr, uk, vi, zh-CN, zh-TW

## Example
Code [here](https://github.com/argerim/select_2_example)

Heroku app [here](http://select-2-example.herokuapp.com/)

## Fix
### IE8 Invalid Character
IE8 doesn't support some unescaped Unicode character and need to quote keys in object literals
You need some configurations for [Uglifier](https://github.com/lautis/uglifier) to do the work.
Add to your `config/environments/production.rb`

       require 'uglifier'
       config.assets.js_compressor = Uglifier.new(output: {ascii_only: true, quote_keys: true})

## Version
From `v2.1.0` on, `select2-rails`'s version will match the version of `Select2` it uses.

The last number of the version is the patch version specific to the gem. For example, for a version of the form `2.x.y`, `2.x` is the release of `Select2` we should be compatible with, and y is the patch version specific to the gem (ie. to resolve any gem-specific issues that crop up).

## Contributions

If you want to contribute, please:

	* Fork the project.
	* Make your feature addition or bug fix.
	* Send me a pull request on Github.

## License

Selec2-Rails is released under the [MIT License](http://www.opensource.org/licenses/MIT).
