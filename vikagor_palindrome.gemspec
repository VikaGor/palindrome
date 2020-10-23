lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/vikagor_palindrome/version'
Gem::Specification.new do |spec|
  spec.name = "vikagor_palindrome"
  spec.version = VikagorPalindrome::VERSION
  spec.authors = ["VikaGor"]
  spec.email = ["Vica-gor@mail.ru"]
  spec.summary = %q{Palindrome detector}
  spec.description = %q{Learn Enough Ruby palindrome detector}
  spec.homepage = "https://github.com/VikaGor/palindrome"
  spec.license = "MIT"
 
  if spec.respond_to?(:metadata)
  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
  raise "RubyGems 2.0 or newer is required to protect against " \
  "public gem pushes."
  end

  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
  `git ls-files -z`.split("\x0").reject do
  |f| f.match(%r{^(test|spec|features)/})
  end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  end
