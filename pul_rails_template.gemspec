require_relative "lib/pul_rails_template/version"

Gem::Specification.new do |spec|
  spec.name = "pul_rails_template"
  spec.version = PulRailsTemplate::VERSION
  spec.authors = ["Eliot Jordan", "Taylor Yamashita"]

  spec.summary = "Template for generating new DLS Rails applications."
  spec.required_ruby_version = ">= 2.6.0"
  spec.license = "Apache-2.0"

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

  spec.add_runtime_dependency "rails", ">= 6.0"

  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rspec-rails", "~> 5.0"
  spec.add_development_dependency "standard", "~> 1.0"
end
