require_relative "lib/lottiejs/wrapper/version"

Gem::Specification.new do |spec|
  spec.name        = "lottiejs-wrapper"
  spec.version     = Lottiejs::Wrapper::VERSION
  spec.authors     = [ "Chirana" ]
  spec.email       = [ "engsw.thiago@gmail.com" ]
  spec.homepage    = "https://github.com/thiagochirana/lottiejs-wrapper"
  spec.summary     = "A community-made unofficial wrapper to easily integrate Lottie files into your Rails application using Stimulus.js"
  spec.description = "A community-made unofficial wrapper to easily integrate Lottie files into your Rails application using Stimulus.js"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/thiagochirana/lottiejs-wrapper"
  spec.metadata["changelog_uri"] = "https://github.com/thiagochirana/lottiejs-wrapper/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "stimulus-rails", "~> 1.2"
end
