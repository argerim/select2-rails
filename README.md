#Select2 for rails asset pipeline

[Select2](https://github.com/ivaynberg/select2) is a jQuery based replacement for select boxes. It supports searching, remote data sets, and infinite scrolling of results.


The `select2-rails` gem integrates the `Select2` jQuery plugin with the Rails asset pipeline.

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

## Version
From `v2.1.0` on, `select2-rails`'s version will match the version of `Select2` it uses. Currently, `select2-rails` uses `Select2 v3.1`.

The last number of the version is the patch version specific to the gem. For example, for a version of the form `2.x.y`, `2.x` is the release of `Select2` we should be compatible with, and y is the patch version specific to the gem (ie. to resolve any gem-specific issues that crop up).

## Contributions

If you wont to contribute, please:

	* Fork the project.
	* Make your feature addition or bug fix.
	* Send me a pull request on Github.

## Copyright

Copyright (c) 2012 Rogerio Medeiros. See [LICENSE](https://github.com/argerim/select2-rails/blob/master/LICENSE) for details.