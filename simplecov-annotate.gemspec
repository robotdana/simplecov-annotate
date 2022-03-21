# frozen_string_literal: true

require_relative "lib/simplecov/annotate/version"

Gem::Specification.new do |spec|
  spec.name = "simplecov-annotate"
  spec.version = SimpleCov::Annotate::VERSION
  spec.authors = ["Dana Sherson"]
  spec.email = ["robot@dana.sh"]

  # frozen_string_literal: true
  spec.summary = "Annotate files with :nocov: based on simplecov's output"
  spec.homepage = "https://github.com/robotdana/simplecov-annotate"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/robotdana/simplecov-annotate"
  spec.metadata["changelog_uri"] = "https://github.com/robotdana/simplecov-annotate/main/blob/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "simplecov", "~> 1.0"
end
