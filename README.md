#Select2 for rails asset pipeline

[Select2](https://github.com/ivaynberg/select2) is a jQuery based replacement for select boxes. It supports searching, remote data sets, and infinite scrolling of results.


The `select2-rails` gem integrates the `Select2` with the Rails asset pipeline.

## Usage

### Install select2-rails gem

Add `select2-rails` in Gemfile and run `bundle install`.

	gem "select2-rails"

### Include select2-rails javascript assets

Add to your `app/assets/javascripts/application.js`.

	//= require select2

### Include select2-rails stylesheet assets

Add to your `app/assets/stylesheets/application.css`.

	*= require select2
	
## Version
The most current release of `select2-rails` uses `Select2 v2.1`.

## Contributions

If you wont to contribute, please:

	* Fork the project.
	* Make your feature addition or bug fix.	
	* Send me a pull request on Github.

## Copyright

Copyright (c) 2012 Rogerio Medeiros. See [LICENSE](https://github.com/argerim/select2-rails/blob/master/LICENSE) for details.