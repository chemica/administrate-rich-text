# frozen_string_literal: true

require_relative "lib/administrate/rich/text/version"

Gem::Specification.new do |spec|
  spec.name = "administrate-rich-text"
  spec.version = Administrate::Rich::Text::VERSION
  spec.authors = ["Benjamin Randles-Dunkley", "Oscar Randles-Dunkley"] # "Purr purr mew/,llllwqerp[ooooooooooooosdfa" - Oscar
  spec.email = ["ben@chemica.co.uk"]

  spec.summary = "Allow rich text editing in Administrate"
  spec.description = "Incorporate ActionText into Administrate to allow rich text editing in the dashboard."
  spec.homepage = "https://github.com/chemica/administrate-rich-text"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'administrate', '< 1.0.0'
  spec.add_dependency 'rails', '>= 7.0.0'
end
