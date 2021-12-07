# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "contrast-theme"
  spec.version       = "3.0.30"
  spec.authors       = ["Chris Nicholson"]
  spec.email         = ["datapolitical@gmail.com"]

  spec.summary       = %q{A short explanation of my awesome gem theme.}
  spec.description   = "A longer explanation of my awesome gem theme that isn’t the same as my summary."
  spec.homepage      = "https://www.chrisfnicholson.com"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|recipes|drinks|LICENSE|README)}i) }
  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|recipes|drinks|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-gist"
  spec.add_runtime_dependency "ffi"
  spec.add_runtime_dependency "jekyll-remote-theme"
  spec.add_runtime_dependency 'jekyll-paginate'
  spec.add_runtime_dependency "jekyll-datapage-generator"
  spec.add_runtime_dependency 'jekyll-sitemap'
  spec.add_runtime_dependency 'jekyll-pwa-workbox'
  spec.add_runtime_dependency 'jekyll_picture_tag'
  spec.add_runtime_dependency 'jekyll-include-cache'
  spec.add_runtime_dependency 'jekyll_version_plugin'

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"

end
