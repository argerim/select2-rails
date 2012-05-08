#Select2 for rails asset pipeline

[Select2](https://github.com/ivaynberg/select2) is a jQuery based replacement for select boxes. It supports searching, remote data sets, and infinite scrolling of results.


The `select2-rails` gem integrates the `Select2` with the Rails asset pipeline.

## Usage

### Install select2-rails gem

Add `select2-rails` in Gemfile

	gem "select2-rails"

Run `bundle install`

### Include select2-rails javascript assets

Add to your `app/assets/javascripts/application.js`

	//= require select2

### Include select2-rails stylesheet assets

Add to your `app/assets/stylesheets/application.css`

	*= require select2

## License

use MIT license.