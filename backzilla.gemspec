# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{backzilla}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wojtek Piekutowski, Pawe\305\202 Sobolewski"]
  s.date = %q{2010-07-30}
  s.default_executable = %q{backzilla}
  s.description = %q{Backzilla can backup multiple entities to multiple destinations.}
  s.email = %q{pawel.sobolewski@amberbit.com}
  s.executables = ["backzilla"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "COPYING",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "backzilla.gemspec",
     "bin/backzilla",
     "examples/projects.yaml",
     "examples/stores.yaml",
     "lib/backzilla.rb",
     "lib/backzilla/configuration.rb",
     "lib/backzilla/connection.rb",
     "lib/backzilla/entity.rb",
     "lib/backzilla/entity/directory.rb",
     "lib/backzilla/entity/mongo_db.rb",
     "lib/backzilla/entity/my_sql.rb",
     "lib/backzilla/executor.rb",
     "lib/backzilla/logger_helper.rb",
     "lib/backzilla/project.rb",
     "lib/backzilla/store.rb",
     "lib/backzilla/store/directory.rb",
     "lib/backzilla/store/ftp.rb",
     "lib/backzilla/store/ssh.rb",
     "lib/backzilla/version.rb",
     "pkg/backzilla-0.0.1.gem",
     "spec/configs/directory/projects.yaml",
     "spec/configs/directory/stores.yaml",
     "spec/configs/mongodb/projects.yaml",
     "spec/configs/mongodb/stores.yaml",
     "spec/configs/mysql/projects.yaml",
     "spec/configs/mysql/stores.yaml",
     "spec/entities/directory_spec.rb",
     "spec/entities/mongodb_spec.rb",
     "spec/entities/mysql_spec.rb",
     "spec/fixtures/directory/a.txt",
     "spec/fixtures/directory/b.txt",
     "spec/fixtures/directory/some/nested/stuff/c.txt",
     "spec/fixtures/mysql/backzilla_test.sql",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://amberbit.com/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Multi-purpose backup tool}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/entities/directory_spec.rb",
     "spec/entities/mysql_spec.rb",
     "spec/entities/mongodb_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

