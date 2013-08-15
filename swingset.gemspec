# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "swingset"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Britt"]
  s.date = "2013-08-15"
  s.description = "by James Britt / Neurogami"
  s.email = "james@neurogami.com"
  s.executables = ["swingset"]
  s.files = ["History.txt", "Manifest.txt", "README.md", "Rakefile", "__.rb", "bin/swingset", "examples/basic.rb", "examples/simple.rb", "lib/java/miglayout-3.7.3.1-swing.jar", "lib/swingset.rb", "lib/swingset/swingset.rb", "lib/swingset_utils.rb", "spec/spec_helper.rb", "spec/swingset_spec.rb", "test/test_swingset.rb"]
  s.homepage = "http://github.com/Neurogami/swingset/tree/master"
  s.require_paths = ["lib"]
  s.rubyforge_project = "swingset"
  s.rubygems_version = "1.8.24"
  s.summary = "Nicer Ruby wrappers for some Swing components."
  s.test_files = ["test/test_swingset.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 3.8.0"])
    else
      s.add_dependency(%q<bones>, [">= 3.8.0"])
    end
  else
    s.add_dependency(%q<bones>, [">= 3.8.0"])
  end
end
