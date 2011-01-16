# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{multilog-collector}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yoshihiro TAKAHARA"]
  s.date = %q{2011-01-16}
  s.description = %q{This is a log collector for multilog of daemontools services.}
  s.email = %q{y.takahara@gmail.com}
  s.executables = ["multilog-collector.rb", "multilog-collector"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/multilog-collector",
    "bin/multilog-collector.rb",
    "lib/djb/daemontools/multilog/collector.rb",
    "lib/djb/daemontools/multilog/log.rb",
    "lib/djb/daemontools/multilog/logs.rb",
    "lib/djb/tai64n.rb",
    "lib/multilog-collector.rb",
    "multilog-collector.gemspec",
    "test/helper.rb",
    "test/test_multilog-collector.rb"
  ]
  s.homepage = %q{http://github.com/tumf/multilog-collector}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{log collector for multilog.}
  s.test_files = [
    "test/helper.rb",
    "test/test_multilog-collector.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
