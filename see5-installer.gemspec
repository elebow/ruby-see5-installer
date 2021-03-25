# frozen_string_literal: true

require_relative "lib/see5/installer/version"

Gem::Specification.new do |spec|
  spec.name          = "see5-installer"
  spec.version       = See5::Installer::VERSION
  spec.authors       = ["Eddie Lebow"]
  spec.email         = ["elebow@users.noreply.github.com"]

  spec.summary       = "Installer for C5.0 and GritBot, tools for decision-tree learning and data cleansing."
  spec.homepage      = "https://github.com/elebow/ruby-see5-installer"
  spec.licenses      = ["MIT", "GPL-3.0"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elebow/ruby-see5-installer"
  spec.metadata["changelog_uri"] = "https://github.com/elebow/ruby-see5-installer/blob/trunk/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.extensions = %w[ext/see5-installer/extconf.rb]
end
