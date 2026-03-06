# frozen_string_literal: true

require_relative "lib/smartcardfyi/version"

Gem::Specification.new do |s|
  s.name        = "smartcardfyi"
  s.version     = SmartCardFYI::VERSION
  s.summary     = "Smart card platform and standard reference"
  s.description = "API client for smartcardfyi.com. Look up smart cards, platforms, form factors, certifications, and applications. Zero dependencies."
  s.authors     = ["FYIPedia"]
  s.email       = ["hello@fyipedia.com"]
  s.homepage    = "https://smartcardfyi.com"
  s.license     = "MIT"
  s.required_ruby_version = ">= 3.0"

  s.files = Dir["lib/**/*.rb"]

  s.metadata = {
    "homepage_uri"      => "https://smartcardfyi.com",
    "source_code_uri"   => "https://github.com/fyipedia/smartcardfyi-rb",
    "changelog_uri"     => "https://github.com/fyipedia/smartcardfyi-rb/blob/main/CHANGELOG.md",
    "documentation_uri" => "https://smartcardfyi.com/developers/",
    "bug_tracker_uri"   => "https://github.com/fyipedia/smartcardfyi-rb/issues",
  }
end
