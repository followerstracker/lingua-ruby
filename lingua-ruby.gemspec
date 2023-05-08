# frozen_string_literal: true

require_relative "lib/lingua/version"

Gem::Specification.new do |spec|
  spec.name = "lingua-ruby"
  spec.version = Lingua::VERSION
  spec.authors = ["Followers Tracker"]
  spec.email = ["support@followerstracker.com"]

  spec.summary = "Ruby (Rust) gem wrapper around Lingua library."
  spec.description = "Ruby (Rust) gem wrapper around Lingua library."
  spec.homepage = "https://github.com/followerstracker/lingua-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"
  spec.required_rubygems_version = ">= 3.3.11"

  spec.files = Dir["*.{md,txt}", "{ext,lib}/**/*", "Cargo.*"]
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/lingua/extconf.rb"]

  spec.add_dependency "rb_sys"

  spec.add_development_dependency "rspec", "~> 3.10"
end
