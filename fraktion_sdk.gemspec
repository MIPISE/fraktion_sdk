# frozen_string_literal: true

require_relative "lib/fraktion_sdk/version"

Gem::Specification.new do |spec|
  spec.name = "fraktion_sdk"
  spec.version = FraktionSdk::VERSION
  spec.authors = ["VANDENBOGAERDE Nicolas"]
  spec.email = ["nicolas.vandenbogaerde@gmail.com"]

  spec.summary = "Fraktion SDK"
  spec.description = "Fraktion SDK"
  spec.homepage = "http://fraktion-test.functori.com/api"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  #spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/MIPISE/fraktion_sdk"
  spec.metadata["changelog_uri"] = "https://github.com/MIPISE/fraktion_sdk"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "activesupport", "~> 6.1.5"
  spec.add_dependency "faraday_middleware", "~> 1.2.0"
  spec.add_development_dependency "minitest", "~> 5.15.0"
  spec.add_development_dependency "minitest-reporters", "~> 1.5.0"
  spec.add_development_dependency "rubocop", "~> 1.26.1" 

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
