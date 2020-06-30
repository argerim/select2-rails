# -*- encoding: utf-8 -*-
# stub: select2-rails 4.0.8 ruby lib

Gem::Specification.new do |s|
  s.name = "select2-rails".freeze
  s.version = "4.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rogerio Medeiros".freeze, "Pedro Nascimento".freeze]
  s.date = "2020-06-25"
  s.description = "Select2 is a jQuery based replacement for select boxes. It supports searching, remote data sets, and infinite scrolling of results. This gem integrates Select2 with Rails asset pipeline for easy of use.".freeze
  s.email = ["argerim@gmail.com".freeze, "pnascimento@gmail.com".freeze]
  s.files = [".gitignore".freeze, "Gemfile".freeze, "README.md".freeze, "Rakefile".freeze, "lib/select2-rails.rb".freeze, "lib/select2-rails/engine.rb".freeze, "lib/select2-rails/source_file.rb".freeze, "lib/select2-rails/version.rb".freeze, "select2-rails.gemspec".freeze, "vendor/assets/javascripts/select2-full.js".freeze, "vendor/assets/javascripts/select2.js".freeze, "vendor/assets/javascripts/select2_locale_af.js".freeze, "vendor/assets/javascripts/select2_locale_ar.js".freeze, "vendor/assets/javascripts/select2_locale_az.js".freeze, "vendor/assets/javascripts/select2_locale_bg.js".freeze, "vendor/assets/javascripts/select2_locale_bn.js".freeze, "vendor/assets/javascripts/select2_locale_bs.js".freeze, "vendor/assets/javascripts/select2_locale_ca.js".freeze, "vendor/assets/javascripts/select2_locale_cs.js".freeze, "vendor/assets/javascripts/select2_locale_da.js".freeze, "vendor/assets/javascripts/select2_locale_de.js".freeze, "vendor/assets/javascripts/select2_locale_dsb.js".freeze, "vendor/assets/javascripts/select2_locale_el.js".freeze, "vendor/assets/javascripts/select2_locale_en.js".freeze, "vendor/assets/javascripts/select2_locale_es.js".freeze, "vendor/assets/javascripts/select2_locale_et.js".freeze, "vendor/assets/javascripts/select2_locale_eu.js".freeze, "vendor/assets/javascripts/select2_locale_fa.js".freeze, "vendor/assets/javascripts/select2_locale_fi.js".freeze, "vendor/assets/javascripts/select2_locale_fr.js".freeze, "vendor/assets/javascripts/select2_locale_gl.js".freeze, "vendor/assets/javascripts/select2_locale_he.js".freeze, "vendor/assets/javascripts/select2_locale_hi.js".freeze, "vendor/assets/javascripts/select2_locale_hr.js".freeze, "vendor/assets/javascripts/select2_locale_hsb.js".freeze, "vendor/assets/javascripts/select2_locale_hu.js".freeze, "vendor/assets/javascripts/select2_locale_hy.js".freeze, "vendor/assets/javascripts/select2_locale_id.js".freeze, "vendor/assets/javascripts/select2_locale_is.js".freeze, "vendor/assets/javascripts/select2_locale_it.js".freeze, "vendor/assets/javascripts/select2_locale_ja.js".freeze, "vendor/assets/javascripts/select2_locale_ka.js".freeze, "vendor/assets/javascripts/select2_locale_km.js".freeze, "vendor/assets/javascripts/select2_locale_ko.js".freeze, "vendor/assets/javascripts/select2_locale_lt.js".freeze, "vendor/assets/javascripts/select2_locale_lv.js".freeze, "vendor/assets/javascripts/select2_locale_mk.js".freeze, "vendor/assets/javascripts/select2_locale_ms.js".freeze, "vendor/assets/javascripts/select2_locale_nb.js".freeze, "vendor/assets/javascripts/select2_locale_ne.js".freeze, "vendor/assets/javascripts/select2_locale_nl.js".freeze, "vendor/assets/javascripts/select2_locale_pl.js".freeze, "vendor/assets/javascripts/select2_locale_ps.js".freeze, "vendor/assets/javascripts/select2_locale_pt-BR.js".freeze, "vendor/assets/javascripts/select2_locale_pt.js".freeze, "vendor/assets/javascripts/select2_locale_ro.js".freeze, "vendor/assets/javascripts/select2_locale_ru.js".freeze, "vendor/assets/javascripts/select2_locale_sk.js".freeze, "vendor/assets/javascripts/select2_locale_sl.js".freeze, "vendor/assets/javascripts/select2_locale_sq.js".freeze, "vendor/assets/javascripts/select2_locale_sr-Cyrl.js".freeze, "vendor/assets/javascripts/select2_locale_sr.js".freeze, "vendor/assets/javascripts/select2_locale_sv.js".freeze, "vendor/assets/javascripts/select2_locale_th.js".freeze, "vendor/assets/javascripts/select2_locale_tk.js".freeze, "vendor/assets/javascripts/select2_locale_tr.js".freeze, "vendor/assets/javascripts/select2_locale_uk.js".freeze, "vendor/assets/javascripts/select2_locale_vi.js".freeze, "vendor/assets/javascripts/select2_locale_zh-CN.js".freeze, "vendor/assets/javascripts/select2_locale_zh-TW.js".freeze, "vendor/assets/stylesheets/select2-bootstrap.css".freeze, "vendor/assets/stylesheets/select2.css".freeze]
  s.homepage = "https://github.com/argerim/select2-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Integrate Select2 javascript library with Rails asset pipeline".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thor>.freeze, ["~> 0.14"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<httpclient>.freeze, ["~> 2.2"])
    else
      s.add_dependency(%q<thor>.freeze, ["~> 0.14"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.0"])
      s.add_dependency(%q<httpclient>.freeze, ["~> 2.2"])
    end
  else
    s.add_dependency(%q<thor>.freeze, ["~> 0.14"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.0"])
    s.add_dependency(%q<httpclient>.freeze, ["~> 2.2"])
  end
end
