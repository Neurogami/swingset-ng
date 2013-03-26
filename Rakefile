# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

gem 'bones', '>= 3.2.0'

begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end


ensure_in_path 'lib'
require 'swingset'

# task :default => 'spec:run'
Bones {
  name        'swingset'
  authors     'James Britt'
  email       'james@neurogami.com'
  url         'http://github.com/Neurogami/swingset/tree/master'
  version     Neurogami::SwingSet::VERSION
  readme_file 'README.md'
  summary     'Nicer Ruby wrappers for some Swing components.'
  exclude     %w{Rakefile.bones.less-than-3.0.0 .__ .git .rvmrc tasks/neurogami.rake}
}


task :default => :notes
