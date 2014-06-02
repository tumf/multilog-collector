# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "multilog-collector"
  spec.version       = File.open("VERSION").read
  spec.authors       = ["Yoshihiro TAKAHARA"]
  spec.email         = ["y.takahara@gmail.com"]
  spec.description   = %q{A log collector for multilog of daemontools services}
  spec.summary       = %q{It is software which collects daemontools service logs.}
  spec.homepage      = "https://github.com/tumf/multilog-collector"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
