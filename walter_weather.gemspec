# frozen_string_literal: true

require_relative "lib/walter_weather/version"

Gem::Specification.new do |spec|
  spec.name = "walter_weather"
  spec.version = WalterWeather::VERSION
  spec.authors = ["Walter Longo Neto"]
  spec.email = ["walterlongoneto@gmail.com"]

  spec.summary = "Hit Open Weather API and returning info on brazilian portuguese"
  spec.required_ruby_version = ">= 3.1.1"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "httparty", "~> 0.20.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
